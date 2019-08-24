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
            config.CreateMap<Tableau, TableauPrix>();
            config.CreateMap<Technique, ParametreIndex>();
            config.CreateMap<Sujet, ParametreIndex>();
            config.CreateMap<Support, ParametreIndex>();
            config.CreateMap<Cadre, ParametreIndex>();
            config.CreateMap<Stockage, ParametreIndex>();
            config.CreateMap<Taille, ParametreIndex>();
            config.CreateMap<Cote, ParametreIndex>();
        }

        public static IQueryable<T> MapTo<T>(this IQueryable<object> linq)
        {
            return linq.ProjectTo<T>(AutoMap.Config);
        }
    }
}
