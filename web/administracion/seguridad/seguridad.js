var app = angular.module("es.logongas.encuestas.seguridad", [
    'restangular',
    'es.logongas.encuestas.seguridad.main',
    'es.logongas.ix3.crud'
]);
app.config(['$routeProvider', 'RestangularProvider', function($routeProvider, RestangularProvider) {
        $routeProvider.otherwise({redirectTo: '/'});

        RestangularProvider.setBaseUrl("/encuestas/api");   
    }]);
