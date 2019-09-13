// Vanilla JS table filter
// Source: https://codepen.io/priyankamalviya/pen/zzWZEa

(function () {
    "use strict";

    var TableFilter = (function () {
        var search;

        function dquery(selector) {
            // Renvoie un tableau des éléments correspondant au sélecteur
            return Array.prototype.slice.call(document.querySelectorAll(selector));
        }

        function onInputEvent(e) {
            // Récupère le texte à rechercher
            var input = e ? e.target : this;
            search = input.value.toLowerCase();
            // Retrouve les lignes où effectuer la recherche
            // (l'attribut data-table de l'input sert à identifier la table à filtrer)
            var selector = input.getAttribute("data-table") + " tbody tr";
            var rows = dquery(selector);
            // Recherche le texte demandé sur les lignes du tableau
            [].forEach.call(rows, filter);
        }

        function filter(row) {
            // Mise en cache de la ligne en minuscule
            if (!row.lower) row.lower = row.textContent.toLowerCase();
            // Masque la ligne si elle ne contient pas le texte recherché
            row.style.display = row.lower.indexOf(search) === -1 ? "none" : "table-row";
        }

        return {
            init: function () {
                // Liste des champs de saisie avec une classe table-filter
                var inputs = dquery(".table-filter");
                [].forEach.call(inputs, function (input) {
                    // Déclenche la recherche dès qu'on saisi un filtre de recherche
                    input.oninput = onInputEvent;
                    // Si on a déjà une valeur (suite à navigatin arrière), on relance la recherche
                    if (input.value !== "") input.oninput();
                });
            }
        };

    })();

    TableFilter.init();
})();
