using System.ComponentModel.DataAnnotations;

namespace Peintur.Models
{
    public class TableauIndex
    {
        public int Tableau_ID { get; set; }

        public string Nom { get; set; }

        [Display(Name = "Année")]
        public string Annee { get; set; }

        public string Technique { get; set; }

        public string Sujet { get; set; }
    }

    public class ParametreIndex
    {
        public int ID { get; set; }

        public string Nom { get; set; }

    }
}
