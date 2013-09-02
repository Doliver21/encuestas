app.config(['crudProvider', function(crudProvider) {
        crudProvider.addCrud({
            entityName: 'User',
            templateExtension: 'jsp',
            pkName: 'idIdentity',
            controller: function($scope, Restangular) {
                $scope.memberOf = Restangular.one($scope.config.entityName, $scope.model[$scope.config.pkName]).getList('memberOf');
            },
            child: [{
                    name: 'memberOf',
                    entityName: 'GroupMember',
                    columns: [
                        {
                            model: 'group.login',
                            label: 'Login'
                        },
                        {
                            model: 'group.toString',
                            label: 'Nombre'
                        }
                    ]
                }]
        })
    }]);