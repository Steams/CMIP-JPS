'use strict'
angular.module 'CMIP-JPS'
.config ($stateProvider) ->
  $stateProvider
    .state('landing',{
      url:'home'
      templateUrl: '/app/partials/home.html'
      # controller: 'globalCtrl'
      })
    .state('bundles',{
      url:'bundles'
      templateUrl:'/app/partials/bundles.html'
      })
    .state('create',{
      url:'create'
      templateUrl:'/app/partials/create.html'
    })
