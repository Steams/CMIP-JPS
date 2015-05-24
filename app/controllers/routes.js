(function() {
  'use strict';
  angular.module('CMIP-JPS').config(function($stateProvider) {
    return $stateProvider.state('landing', {
      url: 'home',
      templateUrl: '/app/partials/home.html'
    }).state('bundles', {
      url: 'bundles',
      templateUrl: '/app/partials/bundles.html'
    }).state('create', {
      url: 'create',
      templateUrl: '/app/partials/create.html'
    });
  });

}).call(this);
