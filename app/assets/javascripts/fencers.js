$(function () {

  var reasons = ["Poor Extention", "Too Close", "Missed Parry"];
  var reasons_count = [20,3,7];

$.ajax({
  method: "GET",
  url: "/points"
}).done(function(data){


});

    $('#container').highcharts({
        chart: {
            type: 'bar'
        },
        title: {
            text: 'Fruit Consumption'
        },
        xAxis: {
            categories: ['Apples', 'Bananas', 'Oranges']
        },
        yAxis: {
            title: {
                text: 'Fruit eaten'
            }
        },
        series: [{
            name: 'Jane',
            data: [1, 0, 4]
        }, {
            name: 'John',
            data: [5, 7, 3]
        }]
    });
});
