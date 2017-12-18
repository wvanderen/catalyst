var app = angular.module('catalyst');
 
app.service('Practice', ['$http', function($http) {
  var base_url = '/practices'
 
  this.index = function() {
    return $http.get(base_url + '.json');
  };
 
  this.show = function(practiceId) {
    return $http.get(base_url + '/' +  practiceId  + '.json')
  }
}]);