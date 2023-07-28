$(document).ready(function() {
    var rangeSlider = $("#range-slider");
    var minPriceInput = $("#min-price");
    var maxPriceInput = $("#max-price");

    rangeSlider.slider({
        // Cấu hình slider theo nhu cầu của bạn
        // ...
        // Sự kiện thay đổi giá trị phạm vi
        change: function(event, ui) {
            var minPrice = ui.values[0];
            var maxPrice = ui.values[1];
            minPriceInput.val(minPrice);
            maxPriceInput.val(maxPrice);
        }
    });
});