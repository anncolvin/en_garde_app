$(function () {
    $('#container').highcharts({
        chart: {
            type: 'pie'
        },
        title: {
            text: 'Reasons for Points Won'
        },
        xAxis: {
            categories: ['Timing', 'Distance', 'Technique']
        },
        yAxis: {
            title: {
                text: 'Quantity of Points Won'
            }
        },
        series: [{
            name: 'Ernest',
            data: [27, 8, 15]
        }, {
        }]
    });
});
