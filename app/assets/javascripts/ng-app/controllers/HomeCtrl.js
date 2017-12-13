(function () {
  function HomeCtrl($scope) {
    $scope.message = "I come from the angular controller!";
    $scope.things = ['This', 'is', 'an', 'array', 'test'];
    }

  angular
      .module('catalyst')
      .controller('HomeCtrl', ['$scope', HomeCtrl]);
})();
