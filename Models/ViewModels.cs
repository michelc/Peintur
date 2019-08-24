﻿using System.Collections.Generic;
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

    public class TableauPrix
    {
        public int Tableau_ID { get; set; }

        public string Nom { get; set; }

        public string Technique { get; set; }

        public string Taille { get; set; }

        public string Cadre { get; set; }

        [Display(Name = "Prix")]
        public int Points { get; set; }
    }


    public class ParametreIndex
    {
        public int ID { get; set; }

        public string Nom { get; set; }
        public int? Valeur { get; set; }
    }

    public class ParametreModel
    {
        public string Type { get; set; }

        public List<ParametreIndex> Parametres { get; set; }

        public int ID { get; set; }

        [Required]
        [StringLength(20)]
        [Display(Name = "Libellé")]
        public string Nom { get; set; }

        public string Complement { get; set; }

        [Range(1, 1000)]
        public int Valeur { get; set; }
    }
}
