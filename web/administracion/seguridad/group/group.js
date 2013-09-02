app.config(['crudProvider', function(crudProvider) {
        crudProvider.addCrud({
            entityName:'Group',
            templateExtension:'jsp',
            pkName:'idIdentity'
        })
}]);