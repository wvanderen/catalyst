var app = angular.module('catalyst');
 
app.controller('MainController', ['$scope', function($scope) {
  $scope.welcome = "Welcome back to Catalyst! ";
  $scope.attractor = "Play your way to powerful self-transformation. Join Catalyst today!"
}]);