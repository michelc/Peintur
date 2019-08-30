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
