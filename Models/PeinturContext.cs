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

        private void ExecuteSql(string sql)
        {
            this.Database.ExecuteSqlCommand(sql);
        }

        public void UpdateParametres(string type, string avant, string apres)
        {
            var sql = string.Format("UPDATE Tableaux SET {0} = '{2}' WHERE {0} = '{1}'", type, avant.Replace("'", "''"), apres.Replace("'", "''"));
            this.ExecuteSql(sql);
        }

        public void UpdatePoints(string taille, int points)
        {
            var sql = string.Format("UPDATE Tableaux SET Points = {1} WHERE Taille = '{0}'", taille.Replace("'", "''"), points);
            this.ExecuteSql(sql);
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
