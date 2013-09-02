(function() {
    var module=angular.module('es.logongas.ix3.services',[]);
    module.factory('breadcrumb',['$location',function($location){
            return {
                /**
                 * Retorna un objeto con pares
                 * @returns {Object}
                 */
                getAll:function() {
                    var data=$location.path().split('/');
                    
                    
                }
            }
    }]);
})();