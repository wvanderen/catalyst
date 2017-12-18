var app = angular.module('catalyst');

app.controller('PracticesCtrl', ['$scope', 'Practice', function($scope, Practice) {
  $scope.practices = [];
 
  function fetchPractices() {
    return Practice.index().then(function(response) {
      $scope.practices = response.data;
    });
  };
 
  fetchPractices();
}]);