// <ul>
//   <% @fencer.bouts.points.each do | p |%>
//       <li><%= p.reason %>-<%= p.reason.count %>
//     <% end %>
// </ul>
//
//
// $(function () {
//   var reasons = ["Poor Extention", "Too Close", "Missed Parry"];
//   var reasons_count = [20,3,7];
//
// $.ajax({
//   method: "GET",
//   url: "/points"
// }).done(function(data){
//
//
// });
//
//     $('#container').highcharts({
//         title: {
//             text: "Reasons for Points Lost"
//         },
//         xAxis: {
//             categories: ['Reasons for Points Lost']
//         },
//         labels: {
//             items: [{
//                 html: 'Points Lost: Distance, Timing, and Technique',
//                 style: {
//                     left: '50px',
//                     top: '18px',
//                     color: (Highcharts.theme && Highcharts.theme.textColor) || 'black'
//                 }
//             }]
//         },
//         series: [{
//             type: 'column',
//             name: 'Poor Extention',
//             data: [7]
//         }, {
//             type: 'column',
//             name: 'Beat',
//             data: [3]
//         }, {
//             type: 'column',
//             name: 'Riposte',
//             data: [9]
//         // }, {
//         //     type: 'spline',
//         //     name: 'Average',
//         //     data: [3, 2.67, 3, 6.33, 3.33],
//         //     marker: {
//         //         lineWidth: 2,
//         //         lineColor: Highcharts.getOptions().colors[3],
//         //         fillColor: 'white'
//         //     }
//         }, {
//             type: 'pie',
//             name: 'Points Lost',
//             data: [{
//                 name: 'Distance',
//                 y: 13,
//                 color: Highcharts.getOptions().colors[7]
//             }, {
//                 name: 'Timing',
//                 y: 23,
//                 color: Highcharts.getOptions().colors[8]
//             }, {
//                 name: 'Technique',
//                 y: 19,
//                 color: Highcharts.getOptions().colors[4]
//             }],
//             center: [100, 80],
//             size: 100,
//             showInLegend: false,
//             dataLabels: {
//                 enabled: true
//             }
//         }]
//     });
// });
//
//
//
//
// var r = [
// ["Too Close"],
// ["Too Far"],
// ["Reaction Time"],
// ["Hesitated"],
// ["Did Not Parry"],
// ["Did Not Attack"],
// ["Failed Attack"],
// ["Lunge"],
// ["Advance"],
// ["Retreat"],
// ["Fleche"],
// ["Unsuccessful Parry"],
// ["Stance Exposed Target"],
// ["Riposte"],
// ["Disengage"]
// ];
//
// var r_c = [20,3,7,8,9,1,5,7,0,0,8,9,1,5,7];
