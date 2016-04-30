$(function () {

    $('#container').highcharts({
        title: {
            text: "Reasons for Points Lost"
        },
        xAxis: {
            categories: ['Reasons for Points Lost']
        },
        labels: {
            items: [{
                html: 'Points Lost: Distance, Timing, and Technique',
                style: {
                    left: '50px',
                    top: '18px',
                    color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
                }
            }]
        },
        series: [{
            type: 'column',
            name: 'Poor Extention',
            data: [7]
        }, {
            type: 'column',
            name: 'Beat',
            data: [3]
        }, {
            type: 'column',
            name: 'Riposte',
            data: [9]
        // }, {
        //     type: 'spline',
        //     name: 'Average',
        //     data: [3, 2.67, 3, 6.33, 3.33],
        //     marker: {
        //         lineWidth: 2,
        //         lineColor: Highcharts.getOptions().colors[3],
        //         fillColor: 'white'
        //     }
        }, {
            type: 'pie',
            name: 'Points Lost',
            data: [{
                name: 'Distance',
                y: 13,
                color: Highcharts.getOptions().colors[7]
            }, {
                name: 'Timing',
                y: 23,
                color: Highcharts.getOptions().colors[8]
            }, {
                name: 'Technique',
                y: 19,
                color: Highcharts.getOptions().colors[4]
            }],
            center: [100, 80],
            size: 100,
            showInLegend: false,
            dataLabels: {
                enabled: true
            }
        }]
    });
});
