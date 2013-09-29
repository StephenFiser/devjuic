app = angular.module("Store", ["ngResource"]);

app.controller('CustomerCtrl', ['$scope', '$resource', function($scope, $resource) {

	var Customer = $resource('/customers/:id', {id: '@id'});

	$scope.customers = Customer.query();
	console.log("here")

	$scope.createCustomer = function() {
		var newCustomer = {
							first_name: $scope.customer.first_name,
							last_name: $scope.customer.last_name,
							status: $scope.customer.status
						};
		Customer.save(newCustomer);
		$scope.customers.push(newCustomer);
		$scope.customer = '';
		$('#firstNameInput').focus();
		$scope.customers.sort(byLastName);
	};

	$scope.removeCustomer = function(index) {
		$scope.customers[index].$delete();
		$scope.customers.splice(index, 1);
	};

	function byLastName(a,b) {
	  if (a.last_name < b.last_name)
	     return -1;
	  if (a.last_name > b.last_name)
	    return 1;
	  return 0;
	}
}]);