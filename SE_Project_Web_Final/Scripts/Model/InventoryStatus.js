
var app = angular.module('OrnoBoards', []);
var a;
//app.controller('InvoiceStatusCtrl', function ($scope, $http) {

//    $scope.cdate = new Date();
//    $http.get('/WebServices/Inventory.asmx/GetInventoryStatus')
//    .then(function (response) {
//        $scope.json = response.data;
//        $scope.json = $scope.json.replace('<?xml version="1.0" encoding="utf-8"?>', '');
//        $scope.json = $scope.json.replace('<string xmlns="http://tempuri.org/">', '');
//        $scope.json = $scope.json.replace('</string>', '');
//        $scope.json = JSON.parse($scope.json);
//        $scope.dtInventory = $scope.json;
//        $scope.json = "";

//        $scope.InventoryItemCode = GetUniqueArrayFromObjectArray($scope.dtInventory, "ItemCode");
//        a = $scope.InventoryItemCode;

//        var obj = { data: $scope.dtInventory }

//        //$('#dt_InvoiceStatus tfoot th').each(function () {
//        //    var title = $(this).text();
//        //    $(this).html('<input type="text" class="md-input" placeholder=" ' + title + '" />');
//        //});
//        var table = $('#dt_InvoiceStatus').DataTable({
            
//            "aaData": $scope.dtInventory,
//            "aoColumns": [
//                { "mData": "Select" },
//            { "mData": "ItemCode" },
//            { "mData": "ItemName" },
//            { "mData": "OnHand" },
//            { "mData": "IsCommited" },
//            { "mData": "OnOrder" },
//            { "mData": "WhsCode" },
//            { "mData": "MinLevel" },
//            { "mData": "MaxLevel" }
//        ]
//        });
//        //table.columns().every(function () {
//        //    var that = this;

//        //    $('input', this.footer()).on('keyup change', function () {
//        //        if (that.search() !== this.value) {
//        //            that
//        //                .search(this.value)
//        //                .draw();
//        //        }
//        //    });
//        //});
        

//       // DtInvoiceStatus();
//    });

//    $scope.BindDdlItemCode = function () {
       

//    };
    

//})

app.directive("repeatEnd", function () {
    return {
        
        link: function (scope, element, attrs) {
            if (scope.$last) {
                DtInvoiceStatus();
                scope.$eval(attrs.repeatEnd);
            }
        }
    };
});
 function DtInvoiceStatus() {
     var $dt_tableTools = $('#dt_InvoiceStatus');
    if($dt_tableTools.length) {
        var table_tableTools = $dt_tableTools.DataTable();

        var tt = new $.fn.dataTable.TableTools( table_tableTools, {
            "sSwfPath": "../bower_components/datatables-tabletools/swf/copy_csv_xls_pdf.swf",download : "open"
        });

        $( tt.fnContainer() ).insertBefore( $dt_tableTools.closest('.dt-uikit').find('.dt-uikit-header'));

        $body.on('click',function(e) {
            if($body.hasClass('DTTT_Print')) {
                if ( !$(e.target).closest(".DTTT").length && !$(e.target).closest(".uk-table").length) {
                    var esc = $.Event("keydown", { keyCode: 27 });
                    $body.trigger(esc);
                }
            }
        })

    }
 }

 $(document).ready(function () {
     $("#txtSearch").autocomplete({
         source: a
     });
 });





