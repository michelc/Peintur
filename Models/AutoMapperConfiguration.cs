using System.Linq;
using AutoMapper;
using AutoMapper.QueryableExtensions;

namespace Peintur.Models
{
    public static class AutoMap
    {
        private static MapperConfiguration Config { get; set; }
        private static IMapper Mapper { get; set; }

        public static void Configure()
        {
            Config = new MapperConfiguration(cfg => {
                ConfigureModels(cfg);
            });

            Mapper = Config.CreateMapper();
        }

        public static void ConfigureModels(IMapperConfigurationExpression config)
        {
            // Entités vers ViewModels Index

            config.CreateMap<Tableau, TableauIndex>();
            config.CreateMap<Tableau, TableauPrint>()
                .ForMember(dest => dest.Annee, opt => opt.MapFrom(src => src.Annee == "1900" ? "" : src.Annee))
                .ForMember(dest => dest.Technique, opt => opt.MapFrom(src => src.Technique == "(autre)" ? "" : src.Technique))
                .ForMember(dest => dest.Sujet, opt => opt.MapFrom(src => src.Sujet == "(autre)" ? "" : src.Sujet))
                .ForMember(dest => dest.Support, opt => opt.MapFrom(src => src.Support == "(autre)" ? "" : src.Support))
                .ForMember(dest => dest.Cadre, opt => opt.MapFrom(src => src.Cadre == "(autre)" ? "" : src.Cadre))
                .ForMember(dest => dest.Stockage, opt => opt.MapFrom(src => src.Stockage == "(autre)" ? "" : src.Stockage))
                .ForMember(dest => dest.Taille, opt => opt.MapFrom(src => (src.Taille == "(autre)" ? "" : src.Points == 0 ? "!" + src.Taille : src.Taille).Replace(" ", "")))
                .ForMember(dest => dest.Commentaires, opt => opt.MapFrom(src => string.IsNullOrEmpty(src.Commentaires) ? "" : "*"));
            config.CreateMap<Tableau, TableauPrix>()
                .ForMember(dest => dest.Cadre, opt => opt.MapFrom(src => src.Cadre == "Non" ? "" : src.Cadre))
                .ForMember(dest => dest.Taille, opt => opt.MapFrom(src => src.Taille.Replace(" ", "")))
                .ForMember(dest => dest.Prix, opt => opt.MapFrom(src => src.Points));
            config.CreateMap<Technique, Parametre>();
            config.CreateMap<Sujet, Parametre>();
            config.CreateMap<Support, Parametre>();
            config.CreateMap<Cadre, Parametre>();
            config.CreateMap<Stockage, Parametre>();
            config.CreateMap<Taille, Parametre>();
            config.CreateMap<Cote, Parametre>();
        }

        public static IQueryable<T> MapTo<T>(this IQueryable<object> linq)
        {
            return linq.ProjectTo<T>(AutoMap.Config);
        }
    }
}
