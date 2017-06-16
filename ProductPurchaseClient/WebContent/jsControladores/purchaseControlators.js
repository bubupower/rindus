var app = angular.module('purchase.controlators', []);

app.controller('PurchaseCtrl', ['$scope', 'PurchaseFactory',
    function ($scope, PurchaseFactory) {       
             
        // callback for ng-click 'purchase':
        $scope.updateStock = function () {

        	PurchaseFactory.update([], $scope.stock,
					     				function (data) {
        			 					    $location.path('/acceso');
								     		alert("Se ha registrado correctamente.")
								     	}, 
								     	function (error) {
								     		if (error.status == 409){
								     			alert("Imposible registrar usuario, el email ya existe en el sistema, si desactivo su cuenta en el pasado, intente reactivarla.");
								     			$location.path('/index');									     		
								     		}else 
								     		alert("Error registrando el usuario, intentelo de nuevo más tarde.")
								     	});                 
           
        };
        
       
        
    }]);
