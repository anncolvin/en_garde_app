$(function () {

  var reasons = [
  ["Too Close"],
  ["Too Far"],
  ["Reaction Time"],
  ["Hesitated"],
  ["Did Not Parry"],
  ["Did Not Attack"],
  ["Failed Attack"],
  ["Lunge"],
  ["Advance"],
  ["Retreat"],
  ["Fleche"],
  ["Unsuccessful Parry"],
  ["Stance Exposed Target"],
  ["Riposte"],
  ["Disengage"]
];

  var reasons_count = [20,3,7,8,9,1,5,7,0,0,8,9,1,5,7];

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
            text: 'Count of Points by Reason'
        },
        xAxis: {
            categories: reasons
        },
        yAxis: {
            title: {
                text: 'Reason Count'
            }
        },
        series: [{
            name: 'Fencer1',
            data: reasons_count
        }, {
            name: 'Fencer2',
            data: [5, 7, 3,5, 7, 12, 7, 15, 7, 1, 7, 18]
        }]
    });
});
