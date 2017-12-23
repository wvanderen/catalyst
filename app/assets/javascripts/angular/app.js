
var app = angular.module('catalyst', ['templates', 'ui.router']);

app.config(['$stateProvider', '$urlRouterProvider', '$locationProvider', function($stateProvider, $urlRouterProvider, $locationProvider) {
  $locationProvider
    .html5Mode({
      enabled: false,
      requireBase: false
    });
  $stateProvider
    .state('home', {
      url: '/',
      templateUrl: 'angular/templates/main/index.html',
      controller: 'MainController'
    })
    .state('practices', {
      url: '/practices',
      templateUrl: 'angular/templates/practices/index.html',
      controller: 'PracticesCtrl'
    })
    .state('practice', {
      url: '/practices/:practiceId',
      templateUrl: 'angular/templates/practices/show.html',
      controller: 'PracticeCtrl'
    });

  $urlRouterProvider.otherwise('/');
}]);
