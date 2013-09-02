app.config(['crudProvider', function(crudProvider) {
        crudProvider.addCrud({
            entityName:'SecureResourceType',
            templateExtension:'jsp'
        });
}]);