angular.module 'CMIP-JPS'
.directive 'navigator',()->
  return{
    restrict:'E'
    # controller:'globalCtrl'
    replace:true
    templateUrl:'/app/partials/navigator.html'
  }
