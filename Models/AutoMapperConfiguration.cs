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
            config.CreateMap<Technique, ParametreIndex>();
        }

        public static IQueryable<T> MapTo<T>(this IQueryable<object> linq)
        {
            return linq.ProjectTo<T>(AutoMap.Config);
        }

    }
}
