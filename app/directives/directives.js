(function() {
  angular.module('CMIP-JPS').directive('navigator', function() {
    return {
      restrict: 'E',
      replace: true,
      templateUrl: '/app/partials/navigator.html'
    };
  });

}).call(this);
