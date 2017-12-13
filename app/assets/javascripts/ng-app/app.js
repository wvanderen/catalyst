(function() {
  function config($locationProvider, $urlRouterProvider, $stateProvider,) {
    $locationProvider
      .html5Mode({
        enabled: true,
        requireBase: false
      });
      
    $urlRouterProvider.otherwise('/');
    
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'home.html',
        controller: 'HomeCtrl as home'
      })
      
      .state('practices', {
        url: '/practices',
        controller: 'PracticesCtrl as practices',
        templateUrl: 'practices.html'
        });
  }

  angular
      .module('catalyst', ['ngAnimate', 'ui.router', 'templates'])
      .config(config);

})();