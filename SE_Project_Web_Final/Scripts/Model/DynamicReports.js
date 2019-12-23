var app = angular.module('OrnoBoards', []);
var a;
app.controller('DynamicFormsCtrl', function ($scope, $http) {

    $scope.cdate = new Date();
    $http.post('/WebServices/DynamicReportsService.asmx/GetTableNames')
    .then(function (response) {
        $scope.json = response.data;
        $scope.json = $scope.json.replace('<?xml version="1.0" encoding="utf-8"?>', '');
        $scope.json = $scope.json.replace('<string xmlns="http://tempuri.org/">', '');
        $scope.json = $scope.json.replace('</string>', '');
        $scope.tableNames = JSON.parse($scope.json);
        
        

        
        
        
    });

    $scope.BindDdlItemCode = function () {


    };

    $scope.GetColumnName = function (value)
    {
        $http.post('/WebServices/DynamicReportsService.asmx/GetColumnNames', { tableName: value })
        .then(function (response) {
            $scope.json = response.data;
            $scope.json = $scope.json.replace('<?xml version="1.0" encoding="utf-8"?>', '');
            $scope.json = $scope.json.replace('<string xmlns="http://tempuri.org/">', '');
            $scope.json = $scope.json.replace('</string>', '');
            $scope.ColumnNames = JSON.parse($scope.json);
        

    });
    }
    $scope.divTablesData = [];
    $scope.AddTable = function (control)
    {
        $scope.divTablesData.push({ title: control.table.TABLE_NAME });
        $scope.GetColumnName(control.table.TABLE_NAME);
    }

    $scope.stuffs = [];
   
    $scope.submit = function () {
        $scope.stuffs.push({ title: 'Hello', content: 'world' });
    }

})
