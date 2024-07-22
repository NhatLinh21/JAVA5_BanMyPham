angular
    .module('myApp', ['ngRoute'])
    .run(function ($rootScope, $timeout) {
        $rootScope.$on('$routeChangeStart', function () {
            $rootScope.loading = true;
        })
        $rootScope.$on('$routeChangeSuccess', function () {
            $timeout(function () {
                $rootScope.loading = false;
            }, 200);
        })
        $rootScope.$on('$routeChangeError', function () {
            $rootScope.loading = false;
            alert('Lỗi');
        })
    })
    .controller('myCtrl', function ($scope, $http, $interval, $filter, $location, $rootScope) {


        $scope.cities = []
        $http.get('/data/diachi.json').then(
            function (res) {
                $scope.cities = res.data;
                console.log($scope.cities)
            },
            function (res) {
                alert('Lỗi');
            },
        )
    })