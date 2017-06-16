//servicios.factory('FactoriaUsuarios', function ($resource) {
//    return $resource(getServerIp()+'/Esportvent/usuariosregistradoses', {}, {
//        query: { method: 'GET', isArray: true},
//        create: { method: 'POST' }
//    })
//});

var services = angular.module('purchase.services', ['ngResource']);

services.factory('PurchaseFactory', function ($resource) {
    return $resource(getServerIp()+'/ProductPurchase/stocks/:id', {}, {
		show: { method: 'GET' },
        update: { method: 'PUT', params: {id: '@id'}}
    })
});
