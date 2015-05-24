(function() {
  'use strict';
  angular.module('CMIP-JPS').config(function($stateProvider) {
    return $stateProvider.state('landing', {
      url: 'home',
      templateUrl: '/app/partials/home.html'
    }).state('bundles', {
      url: 'bundles',
      templateUrl: '/app/partials/bundles.html'
    }).state('customize', {
      url: 'customize',
      templateUrl: '/app/partials/customize.html'
    });
  });

}).call(this);
