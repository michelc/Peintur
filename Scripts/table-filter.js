// Vanilla JS table filter
// Source: https://codepen.io/priyankamalviya/pen/zzWZEa

(function () {
    "use strict";

    var TableFilter = (function () {
        var search;

        function dquery(selector) {
            return Array.prototype.slice.call(document.querySelectorAll(selector));
        }

        function onInputEvent(e) {
            var input = e ? e.target : this;
            search = input.value.toLowerCase();
            var selector = input.getAttribute("data-table") + " tbody tr";
            var rows = dquery(selector);
            [].forEach.call(rows, filter);
        }

        function filter(row) {
            if (!row.lower) row.lower = row.textContent.toLowerCase();
            row.style.display = row.lower.indexOf(search) === -1 ? "none" : "table-row";
        }

        return {
            init: function () {
                var inputs = dquery(".table-filter");
                [].forEach.call(inputs, function (input) {
                    input.oninput = onInputEvent;
                    if (input.value !== "") input.oninput();
                });
            }
        };

    })();

    TableFilter.init();
})();
