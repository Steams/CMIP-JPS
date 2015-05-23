angular.module 'CMIP-JPS',['ngRoute','ui.router']
  .config($stateProvider, $urlRouterProvider, $locationProvider) ->
    $locationProvider.html5Mode true
