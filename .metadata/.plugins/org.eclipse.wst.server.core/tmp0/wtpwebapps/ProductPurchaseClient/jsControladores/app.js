'use strict';

// Declare app level module which depends on filters, and services
angular.module('purchase', ['purchase.services', 'purchase.directives', 'purchase.controlators']).
    config(['$routeProvider', function ($routeProvider) {
    	$routeProvider.when('/index', {templateUrl: 'index.html', controller: 'PurchaseCtrl'});
    	$routeProvider.otherwise({redirectTo: '/index'});
    }]);


