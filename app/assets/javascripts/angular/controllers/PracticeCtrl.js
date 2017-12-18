var app = angular.module('catalyst');
 
app.controller('PracticeCtrl', ['$scope', '$stateParams', '$http', 'Practice', function($scope, $stateParams, $http, Practice) {
  $scope.practice = {};
 
  function fetchPractice() {
    return Practice.show($stateParams.practiceId).then(function(response) {
      $scope.practice = response.data;
    })
  }
 
  fetchPractice();
}]);