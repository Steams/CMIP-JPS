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
      controller:'bundlesCtrl'
      })
    .state('customize',{
      url:'customize'
      controller:'bundlesCtrl'
      templateUrl:'/app/partials/customize.html'
    })
