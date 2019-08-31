// Vanilla JS table filter
// Source: https://codepen.io/priyankamalviya/pen/zzWZEa

(function () {
    "use strict";

    var TableFilter = (function () {
        var Arr = Array.prototype;
        var search;

        function onInputEvent(e) {
            var input = e ? e.target : this;
            search = input.value.toLowerCase();
            var tables = document.getElementsByClassName(input.getAttribute("data-table"));
            Arr.forEach.call(tables, function (table) {
                Arr.forEach.call(table.tBodies, function (tbody) {
                    Arr.forEach.call(tbody.rows, filter);
                });
            });
        }

        function filter(row) {
            var text = row.textContent.toLowerCase();
            row.style.display = text.indexOf(search) === -1 ? "none" : "table-row";
        }

        return {
            init: function () {
                var inputs = document.getElementsByClassName("table-filter");
                Arr.forEach.call(inputs, function (input) {
                    input.oninput = onInputEvent;
                    if (input.value !== "") input.oninput();
                });
            }
        };

    })();

    TableFilter.init();
})();
