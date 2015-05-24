'use strict'

angular.module 'CMIP-JPS'
.controller 'globalCtrl',['$scope','$state',($scope,$state)->
  $scope.init = ()->
    $state.go('customize')
  # alert 'hey'
  $scope.init()
]
