'use strict'

angular.module 'CMIP-JPS'
.controller 'globalCtrl',['$scope','$state',($scope,$state)->
  $scope.init = ()->
    $state.go('landing')
  # alert 'hey'
  $scope.init()
]
