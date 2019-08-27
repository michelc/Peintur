using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Peintur.Models
{
    public abstract class Parametre : IParametre
    {
        [Key]
        public int ID { get; set; }

        [Required]
        [StringLength(20)]
        public string Nom { get; set; }

        public int? Valeur { get; set; }

    }
    public interface IParametre
    {
        int ID { get; set; }

        string Nom { get; set; }

        int? Valeur { get; set; }

    }

    public class Technique : Parametre, IParametre { }
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
        [DataType(DataType.Currency)]

        [Display(Name = "Poids (en kg)")]
        public decimal Poids { get; set; }

        [DataType(DataType.MultilineText)]
        public string Commentaires { get; set; }
        //The field * "must be a string or array type with a maximum length of '-1'."
    }
}
