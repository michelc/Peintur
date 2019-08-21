using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.Migrations;

namespace Peintur.Models
{
    public class PeinturContext : DbContext
    {
        public DbSet<Tableau> Tableaux { get; set; }
        public DbSet<Technique> Techniques { get; set; }
        public DbSet<Sujet> Sujets { get; set; }
        public DbSet<Support> Supports { get; set; }
        public DbSet<Cadre> Cadres { get; set; }
        public DbSet<Stockage> Stokages { get; set; }
        public DbSet<Taille> Tailles { get; set; }
        public DbSet<Cote> Cotes { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            var environment = ConfigurationManager.AppSettings["Environment"] ?? "Debug";

            switch (environment)
            {
                case "Debug":
                    // Contexte pour le débugage
                    // => migration automatique de la base de données
                    Database.SetInitializer(new MigrateDatabaseToLatestVersion<PeinturContext, Configuration>());
                    break;
                case "Test":
                    // Contexte pour les tests unitaires
                    // => suppression et re-création de la base de données
                    Database.SetInitializer<PeinturContext>(new DropCreateDatabaseAlways<PeinturContext>());
                    break;
                default:
                    // Contexte pour la production
                    // => ne toucher à rien !
                    break;
            }
        }
    }

    public class Configuration : DbMigrationsConfiguration<PeinturContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
            AutomaticMigrationDataLossAllowed = true;
        }
    }
}
