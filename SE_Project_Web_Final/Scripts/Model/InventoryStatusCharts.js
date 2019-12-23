var app = angular.module('OrnoBoards', []);
var a;
//app.controller('InventoryStatusChartCtrl', function ($scope, $http) {

//    $scope.cdate = new Date();
//    // Get Graph : Inventory status
//    $http.get('/WebServices/Inventory.asmx/GetInventoryOnOrderGraphData')
//    .then(function (response) {
//        $scope.json = response.data;
//        $scope.json = $scope.json.replace('<?xml version="1.0" encoding="utf-8"?>', '');
//        $scope.json = $scope.json.replace('<string xmlns="http://tempuri.org/">', '');
//        $scope.json = $scope.json.replace('</string>', '');
//        $scope.json = JSON.parse($scope.json);
//        $scope.dtInventoryStatus = $scope.json;
//        $scope.json = "";

//        InventoryStatusChar($scope.dtInventoryStatus);
//        InventoryStatusChartPie($scope.dtInventoryStatus);
//        InventoryStatusChartLine($scope.dtInventoryStatus);
//    });




//});





//function InventoryStatusChar(dt) {
//    var OnHand = [];
//    var IsCommited = [];
//    var OnOrder = [];
//    var WareHouses = [];
//    WareHouses.push("WareHouse");
//    OnHand.push('OnHand');
//    IsCommited.push('IsCommited');
//    OnOrder.push('OnOrder');

//    var Order = dt[0];
//    var Hand = dt[1];
//    var Commited = dt[2];


//    for (var i = 0; i < Order.length; i++) {
//        OnHand.push(Hand[i].OnHand);
//        OnOrder.push(Order[i].OnOrder);
//        IsCommited.push(Commited[i].IsCommited);
//        WareHouses.push(Hand[i].WareHouse);
//    }
//    var chart = c3.generate({
//        bindto: "#InventoryStatusBarGraph",
//        data: {
//            x: 'WareHouse',
//            columns: [
//                WareHouses,
//                OnHand,
//                 OnOrder,
//                 IsCommited
//            ],

//            type: 'bar'
//        },
//        axis: {
//            x: {
//                type: 'category',
//                tick: {
//                    rotate: 0,
//                    multiline: false
//                },

//            }
//        }
//    });
//}




//function InventoryStatusChartPie(dt) {
//    var OnHand = [];
//    var IsCommited = [];
//    var OnOrder = [];
//    var WareHouses = [];
//    WareHouses.push("WareHouse");
//    OnHand.push('OnHand');
//    IsCommited.push('IsCommited');
//    OnOrder.push('OnOrder');

//    var Order = dt[0];
//    var Hand = dt[1];
//    var Commited = dt[2];


//    for (var i = 0; i < Order.length; i++) {
//        OnHand.push(Hand[i].OnHand);
//        OnOrder.push(Order[i].OnOrder);
//        IsCommited.push(Commited[i].IsCommited);
//        WareHouses.push(Hand[i].WareHouse);
//    }
//    var chart = c3.generate({
//        bindto: "#InventoryStatusPieChart",
//        data: {
//            x: 'WareHouse',
//            columns: [
//                WareHouses,
//                OnHand,
//                 OnOrder,
//                 IsCommited
//            ],

//            type: 'pie'
//        },
//        axis: {
//            x: {
//                type: 'category',
//                tick: {
//                    rotate: 0,
//                    multiline: false
//                },

//            }
//        },
//        legend: {
//            item: {
//                onclick: function (d) { InventoryLegendClick(d); }
//            }
//        }
//    });
//}


//function InventoryStatusChartLine(dt) {
//    var OnHand = [];
//    var IsCommited = [];
//    var OnOrder = [];
//    var WareHouses = [];
//    WareHouses.push("WareHouse");
//    OnHand.push('OnHand');
//    IsCommited.push('IsCommited');
//    OnOrder.push('OnOrder');

//    var Order = dt[0];
//    var Hand = dt[1];
//    var Commited = dt[2];


//    for (var i = 0; i < Order.length; i++) {
//        OnHand.push(Hand[i].OnHand);
//        OnOrder.push(Order[i].OnOrder);
//        IsCommited.push(Commited[i].IsCommited);
//        WareHouses.push(Hand[i].WareHouse);
//    }
//    var chart = c3.generate({
//        bindto: "#InventoryStatusLineGraph",
//        data: {
//            x: 'WareHouse',
//            columns: [
//                WareHouses,
//                OnHand,
//                 OnOrder,
//                 IsCommited
//            ],

//            type: 'line'
//        },
//        axis: {
//            x: {
//                type: 'category',
//                tick: {
//                    rotate: 0,
//                    multiline: false
//                },

//            }
//        }
//    });

//    d3.selectAll('.tick')
//  .on('click', function (value, index, a) {
//      var b =  this;
//      InventoryLegendClick(this.textContent)
//  });
//}

//function drawInventoryOnHandChart(data) {
//    var options = {
//        labelInterpolationFnc: function (value) {
//            return value[0]
//        }
//    };

//    var responsiveOptions = [
//        ['screen and (max-width: 767px)', {
//            chartPadding: 50,
//            labelOffset: 50,
//            labelDirection: 'explode',
//            labelInterpolationFnc: function (value) {
//                return value;
//            }
//        }],
//        ['screen and (min-width: 768px)', {
//            chartPadding: 30,
//            labelOffset: 60,
//            labelDirection: 'explode',
//            labelInterpolationFnc: function (value) {
//                return value;
//            }
//        }],
//        ['screen and (min-width: 1024px)', {
//            labelOffset: 80,
//            chartPadding: 20
//        }]
//    ];
//    new Chartist.Bar('.ct-chart', {
//        labels: data.labels,
//        series: [
//          data.series
//        ]
//    }, {

//        axisX: {
//            showGrid: false
//        }
//    });

//    //new Chartist.Bar('.ct-chart', data, {
//    //    seriesBarDistance: 30,
//    //    axisX: {
//    //        showGrid: false
//    //    }
//    //});
//    // new Chartist.Pie('.ct-chart', data);
//}
