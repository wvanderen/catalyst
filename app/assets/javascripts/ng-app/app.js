angular
    .module('catalyst', ['ui.router', 'templates'])
    .config(['$stateProvider', '$urlProvider'. 
    function($stateProvider, $urlProvider) {
        $stateProvider
        .state('home, {
            url: '/',
            templateUrl: 'main/_home.html',
            controller: 'MainCtrl'
            });
        $urlRouterProvider.otherwise('home');
            
    }])