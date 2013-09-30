app = angular.module("Store", ["ngResource"]);

app.controller('CustomerCtrl', ['$scope', '$resource', function($scope, $resource) {

	var Customer = $resource('/customers/:id', {id: '@id'});

	$scope.customers = Customer.query();

	$scope.createCustomer = function() {
		var newCustomer = {
							first_name: $scope.customer.first_name,
							last_name: $scope.customer.last_name,
							status: $scope.customer.status
						};
		Customer.save(newCustomer, function(success) {
			$scope.customers.push(newCustomer);
			$scope.customer = '';
			$('#firstNameInput').focus();
		}, function(error) {
			console.log(error);
		});
		$scope.customers = Customer.query(); // Calling this updates the customer model after it has been saved
	};

	$scope.removeCustomer = function(customerId) {
		Customer.delete({id: customerId}, function(success) {
			console.log("Customer deleted.");
			$scope.customers = Customer.query();
		});
	};
}]);