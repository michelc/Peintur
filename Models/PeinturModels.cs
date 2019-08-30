using System.ComponentModel.DataAnnotations;

namespace Peintur.Models
{
    public class Parametre
    {
        [Key]
        public int ID { get; set; }

        [Required]
        [StringLength(20)]
        public string Nom { get; set; }

        public int? Valeur { get; set; }

    }

    public class Technique : Parametre { }
    public class Sujet : Parametre { }
    public class Support : Parametre { }
    public class Cadre : Parametre { }
    public class Stockage : Parametre { }
    public class Taille : Parametre { }
    public class Cote : Parametre { }

    public class Tableau
    {
        [Key]
        public int Tableau_ID { get; set; }

        [Required]
        [StringLength(100)]
        public string Nom { get; set; }

        [Display(Name = "Année")]
        [Required]
        [StringLength(10)]
        public string Annee { get; set; }

        [Required]
        [StringLength(20)]
        [UIHint("RadioButtonList")]
        public string Technique { get; set; }

        [Required]
        [StringLength(20)]
        [UIHint("RadioButtonList")]
        public string Sujet { get; set; }

        [Required]
        [StringLength(20)]
        [UIHint("RadioButtonList")]
        public string Support { get; set; }

        [Required]
        [StringLength(20)]
        [UIHint("RadioButtonList")]
        public string Cadre { get; set; }

        [Required]
        [StringLength(20)]
        [UIHint("RadioButtonList")]
        public string Stockage { get; set; }

        [Display(Name = "Taille (Gd x Pt)")]
        [Required]
        [StringLength(20)]
        [UIHint("RadioButtonList")]
        public string Taille { get; set; }

        public int Points { get; set; }

        [Display(Name = "Poids (en kg)")]
        [DataType(DataType.Currency)]
        public decimal? Poids { get; set; }

        [DataType(DataType.MultilineText)]
        public string Commentaires { get; set; }
    }
}
