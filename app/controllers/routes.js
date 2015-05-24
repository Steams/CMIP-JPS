(function() {
  'use strict';
  angular.module('CMIP-JPS').config(function($stateProvider) {
    return $stateProvider.state('landing', {
      url: 'home',
      templateUrl: '/app/partials/home.html'
    }).state('bundles', {
      url: 'bundles',
      templateUrl: '/app/partials/bundles.html',
      controller: 'bundlesCtrl'
    }).state('customize', {
      url: 'customize',
      controller: 'bundlesCtrl',
      templateUrl: '/app/partials/customize.html'
    });
  });

}).call(this);
