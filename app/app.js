(function() {
  angular.module('CMIP-JPS', ['ngRoute', 'ui.router']).config($stateProvider, $urlRouterProvider, $locationProvider)(function() {
    return $locationProvider.html5Mode(true);
  });

}).call(this);
