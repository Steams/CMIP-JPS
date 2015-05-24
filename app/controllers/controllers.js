(function() {
  'use strict';
  angular.module('CMIP-JPS').controller('globalCtrl', [
    '$scope', '$state', function($scope, $state) {
      $scope.init = function() {
        return $state.go('landing');
      };
      return $scope.init();
    }
  ]);

}).call(this);
