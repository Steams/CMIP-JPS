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

  angular.module('CMIP-JPS').controller('bundlesCtrl', [
    '$scope', 'BundleFactory', '$state', function($scope, BundleFactory, $state) {
      $scope.appliances = BundleFactory[BundleFactory.plan].appliances;
      $scope.period = "1 week";
      $scope.plan = BundleFactory.plan;
      $scope.setPlan = function(name) {
        BundleFactory.plan = name;
        return $state.go('customize');
      };
      $scope.init = function() {
        $scope.icons = [
          {
            "name": 'washing mashine',
            "abrv": 'WM',
            "selected": false
          }, {
            "name": 'iron',
            "abrv": 'I',
            "selected": false
          }, {
            "name": 'laptop',
            "abrv": 'LPTP',
            "selected": false
          }, {
            "name": 'microwave',
            "abrv": 'MW',
            "selected": false
          }, {
            "name": 'standing fan',
            "abrv": 'Fan',
            "selected": false
          }, {
            "name": 'single door fridge',
            "abrv": 'SDF',
            "selected": false
          }, {
            "name": 'regular bulb',
            "abrv": 'B',
            "selected": false
          }, {
            "name": 'plasma Tv',
            "abrv": 'PTV',
            "selected": false
          }, {
            "name": 'ac unit',
            "abrv": 'AC',
            "selected": false
          }, {
            "name": 'energy saving bulb',
            "abrv": 'ESB',
            "selected": false
          }, {
            "name": 'flourescnet Bulb',
            "abrv": 'FB',
            "selected": false
          }, {
            "name": 'double door fridge',
            "abrv": 'DDF',
            "selected": false
          }, {
            "name": 'electronic Stove',
            "abrv": 'ES',
            "selected": false
          }, {
            "name": 'tv standard',
            "abrv": 'LCD',
            "selected": false
          }
        ];
        $scope.appliances = BundleFactory[BundleFactory.plan].appliances;
        return $scope.appliances.forEach(function(ap, index) {
          return $scope.icons.forEach(function(icon, index2) {
            if (ap.name === icon.name) {
              return icon.selected = true;
            }
          });
        });
      };
      $scope.init();
      $scope.cost = function(ap) {
        return (ap.hours * ap.watt * ap.amount * 40) / 1000;
      };
      $scope.sumWatt = function() {
        var sum;
        sum = 0;
        $scope.appliances.forEach(function(ap, index) {
          return sum += ap.watt * ap.hours * ap.amount;
        });
        return Math.round(sum / 1000);
      };
      $scope.sumCost = function() {
        var sum;
        sum = 0;
        $scope.appliances.forEach(function(ap, index) {
          return sum += $scope.cost(ap);
        });
        return Math.round(sum);
      };
      $scope.parser = function(v) {
        switch (v) {
          case "1 month":
            return 30;
          case "1 week":
            return 7;
          case "2 weeks":
            return 14;
        }
      };
      $scope.remove = function(name) {
        var index, names;
        console.log('removing');
        names = $scope.appliances.map(function(e) {
          return e.name;
        });
        console.log(names);
        index = names.indexOf(name);
        return $scope.appliances.splice(index, 1);
      };
      $scope.add = function(name) {
        return $scope.appliances.push({
          "name": name
        });
      };
      return $scope.select = function(index) {
        $scope.icons[index].selected = !$scope.icons[index].selected;
        if ($scope.icons[index].selected) {
          return $scope.add($scope.icons[index].name);
        } else {
          return $scope.remove($scope.icons[index].name);
        }
      };
    }
  ]);

}).call(this);
