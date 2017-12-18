// (function () {
//   function HomeCtrl($scope) {
//     $scope.message = "I come from the angular controller!";
//     $scope.things = ['This', 'is', 'an', 'array', 'test'];
//     }

//   angular
//       .module('catalyst')
//       .controller('HomeCtrl', ['$scope', HomeCtrl]);
// })();


angular.module('catalyst')
    .controller('HomeCtrl', function ($scope) {
        $scope.things = ['Angular', 'Rails 4.1', 'UI Router', 'Together!!'];
    });