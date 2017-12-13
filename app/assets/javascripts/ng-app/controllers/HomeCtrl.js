(function () {
  function HomeCtrl($scope) {
    $scope.message = "I come from the angular controller!";
    }

  angular
      .module('catalyst')
      .controller('HomeCtrl', ['$scope', HomeCtrl]);
})();
