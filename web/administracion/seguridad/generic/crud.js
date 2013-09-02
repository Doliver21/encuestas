(function() {
    var module = angular.module("es.logongas.ix3.crud", ['restangular'])
    module.provider('crud', ['$routeProvider',
        function($routeProvider) {
            this.cruds = [];
            this.addCrud = function(config) {
                this.cruds.push(config);

                var entityName = config.entityName;
                var lowerEntityName = entityName.toLowerCase();
                var camelEntityName = entityName.charAt(0).toLowerCase() + entityName.slice(1);
                var upperCamelEntityName = entityName.charAt(0).toUpperCase() + entityName.slice(1);

                config.templateExtension = config.templateExtension || 'html';
                config.pkName = config.pkName || 'id' + upperCamelEntityName;
                config.controllerList = config.controllerList || function() {
                };
                config.controller = config.controller || function() {
                };

                var templateExtension = config.templateExtension;
                var pkName = config.pkName;

                $routeProvider.when('/' + lowerEntityName + '/list', {
                    templateUrl: lowerEntityName + '/' + lowerEntityName + '_list.tpl.' + templateExtension,
                    controller: 'CRUDListCtrl',
                    resolve: {
                        model: ['Restangular', function(Restangular) {
                                return Restangular.all(entityName).getList();
                            }],
                        config: function() {
                            return config;
                        }
                    }
                });

                $routeProvider.when('/' + lowerEntityName + '/new', {
                    templateUrl: lowerEntityName + '/' + lowerEntityName + '.tpl.' + templateExtension,
                    controller: 'CRUDCtrl',
                    resolve: {
                        model: ['Restangular', function(Restangular) {
                                return Restangular.one(entityName, 'create').get();
                            }],
                        newRow: function() {
                            return true;
                        },
                        config: function() {
                            return config;
                        }
                    }

                });

                $routeProvider.when('/' + lowerEntityName + '/edit/:id', {
                    templateUrl: lowerEntityName + '/' + lowerEntityName + '.tpl.' + templateExtension,
                    controller: 'CRUDCtrl',
                    resolve: {
                        model: ['$route', 'Restangular', function($route, Restangular) {
                                var one=Restangular.one(entityName, $route.current.params.id);
                                return one.get();
                            }],
                        newRow: function() {
                            return false;
                        },
                        config: function() {
                            return config;
                        }
                    }
                });

            };

            this.$get = function() {
                return {
                    cruds: cruds
                };
            };

        }
    ]);


    module.controller('CRUDCtrl', ['$scope', '$window', 'model', 'newRow', 'config', '$controller',
        function($scope, $window, model, newRow, config, $controller) {
            $scope.model = model;
            $scope.newRow = newRow;
            $scope.config = config;
            var lowerEntityName = config.entityName.toLowerCase();

            $scope.saveRow = function() {
                if ($scope.newRow === true) {
                    //INSERT
                    $scope.model.post().then(function() {
                        $window.history.back();
                    });
                } else {
                    //UPDATE
                    $scope.model.customPUT($scope.model[$scope.config.pkName]).then(function() {
                        $window.history.back();
                    });
                }
            };

            $scope.deleteRow = function() {
                $scope.model.customDELETE($scope.model[$scope.config.pkName]).then(function() {
                    $window.history.back();
                });
                
            };

            $scope.cancelRow = function() {
                $window.history.back();
            };

            $controller(config.controller, {'$scope': $scope});
        }
    ]);

    module.controller('CRUDListCtrl', ['$scope', '$location', 'model', 'config', '$controller',
        function($scope, $location, model, config, $controller) {
            $scope.model = model;
            $scope.config = config;
            var lowerEntityName = config.entityName.toLowerCase();

            $scope.newRow = function() {
                $location.path('/' + lowerEntityName + '/new');
            };
            $scope.editRow = function(model) {
                $location.path('/' + lowerEntityName + '/edit/' + model[$scope.config.pkName]);
            };
            $controller(config.controllerList, {'$scope': $scope});
        }
    ]);

})();