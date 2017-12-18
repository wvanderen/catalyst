// (function() {
//   function config($locationProvider, $urlRouterProvider, $stateProvider,) {
//     $locationProvider
//       .html5Mode({
//         enabled: true,
//         requireBase: false
//       });
      
//     $urlRouterProvider.otherwise('/');
    
//     $stateProvider
//       .state('home', {
//         url: '/',
//         template: 'home.html',
//         controller: 'HomeCtrl'
//       })
      
//       .state('practices', {
//         url: '/practices',
//         controller: 'PracticesCtrl as practices',
//         templateUrl: 'templates/practices.html',
//         controller: 'PracticesCtrl as practices'
//         });
//   }

//   angular
//       .module('catalyst',  ['ui.router', 'templates'])
//       .config(config);

// })();