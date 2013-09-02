(function() {
    var module = angular.module("es.logongas.encuestas.seguridad.main", ['restangular']);
    module.config(['$routeProvider', '$locationProvider', 'RestangularProvider', function($routeProvider, $locationProvider, RestangularProvider) {
            $routeProvider.when('/', {
                templateUrl: 'main/main.tpl.jsp',
                controller: 'MainCtrl',
                resolve: {
                    breadcrumbs: function() {
                        return [
                            {link: '#!/', name: 'Main'}
                        ]
                    }
                },
            });
        }]);

    module.controller('MainCtrl', ['$scope',  'breadcrumbs', function($scope, breadcrumbs) {
            $scope.breadcrumbs = breadcrumbs;
        }]);

})();