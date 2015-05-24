'use strict'

angular.module 'CMIP-JPS'
.controller 'globalCtrl',['$scope','$state',($scope,$state)->
  $scope.init = ()->
    $state.go('landing')
  # alert 'hey'
  $scope.init()
]

angular.module 'CMIP-JPS'
.controller 'bundlesCtrl',['$scope','BundleFactory','$state',($scope,BundleFactory,$state)->
  $scope.appliances = BundleFactory[BundleFactory.plan].appliances
  $scope.period = "1 week"
  $scope.plan = BundleFactory.plan
  $scope.setPlan =(name)->
    BundleFactory.plan = name
    # BundleFactory.active = name
    $state.go('customize')

  $scope.init = ()->
    $scope.icons = [
      {
        "name":'washing mashine'
        "abrv":'WM'
        "selected":false
      },
      {
        "name":'iron'
        "abrv":'I'
        "selected":false
      },
      {
        "name":'laptop'
        "abrv":'LPTP'
        "selected":false
      },
      {
        "name":'microwave'
        "abrv":'MW'
        "selected":false
      },
      {
        "name":'standing fan'
        "abrv":'Fan'
        "selected":false
      },
      {
        "name":'single door fridge'
        "abrv":'SDF'
        "selected":false
      },
      {
        "name":'regular bulb'
        "abrv":'B'
        "selected":false
      },
      {
        "name":'plasma Tv'
        "abrv":'PTV'
        "selected":false
      },
      {
        "name":'ac unit'
        "abrv":'AC'
        "selected":false
      },
      {
        "name":'energy saving bulb'
        "abrv":'ESB'
        "selected":false
      },
      {
        "name":'flourescnet Bulb'
        "abrv":'FB'
        "selected":false
      },
      {
        "name":'double door fridge'
        "abrv":'DDF'
        "selected":false
      },
      {
        "name":'electronic Stove'
        "abrv":'ES'
        "selected":false
      },
      {
        "name":'tv standard'
        "abrv":'LCD'
        "selected":false
      }
    ]
    $scope.appliances = BundleFactory[BundleFactory.plan].appliances
    $scope.appliances.forEach (ap,index)->
      $scope.icons.forEach (icon,index2)->
        if(ap.name == icon.name)
          # alert 'asd'
          icon.selected = true

  $scope.init()
  $scope.cost = (ap)->
    return (ap.hours*ap.watt*ap.amount*40)/1000

  $scope.sumWatt = ()->
    sum =0
    $scope.appliances.forEach (ap,index)->
      sum += ap.watt*ap.hours*ap.amount
    return Math.round(sum/1000)

  $scope.sumCost = ()->
    sum =0
    $scope.appliances.forEach (ap,index)->
      sum += $scope.cost(ap)
    return Math.round(sum)

  $scope.parser = (v)->
    switch v
      when "1 month"
        return 30
      when "1 week"
        return 7
      when "2 weeks"
        return 14

  $scope.remove = (name)->
    console.log 'removing'
    names = $scope.appliances.map (e)-> return e.name

    console.log names
    index = names.indexOf(name)
    $scope.appliances.splice(index,1)

  $scope.add =(name)->
    $scope.appliances.push({"name":name})

  $scope.select = (index)->
    $scope.icons[index].selected = !$scope.icons[index].selected
    if($scope.icons[index].selected)
      $scope.add($scope.icons[index].name)
    else
      $scope.remove($scope.icons[index].name)


]
