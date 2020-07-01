window.onload = function () {
    var chart = new CanvasJS.Chart("chartContainer",
    {

      title:{
      text: "Website Visits"
      },
       data: [
      {
        type: "line",

        dataPoints: [
        { x: new Date(2020, 00, 1), y: 450 },
        { x: new Date(2020, 01, 1), y: 414 },
        { x: new Date(2020, 02, 1), y: 520 },
        { x: new Date(2020, 03, 1), y: 460 },
        { x: new Date(2020, 04, 1), y: 450 },
        { x: new Date(2020, 05, 1), y: 500 },
        { x: new Date(2020, 06, 1), y: 480 },
        { x: new Date(2020, 07, 1), y: 480 },
        { x: new Date(2020, 08, 1), y: 410 },
        { x: new Date(2020, 09, 1), y: 500 },
        { x: new Date(2020, 10, 1), y: 480 },
        { x: new Date(2020, 11, 1), y: 510 }
        ]
      }
      ]
    });

    chart.render();
  }