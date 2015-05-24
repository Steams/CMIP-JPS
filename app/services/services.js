(function() {
  angular.module('CMIP-JPS').service('PrepayPackage', [
    function() {
      var RATE_PER_KWH, prepaypackage;
      RATE_PER_KWH = 40;
      prepaypackage = {};
      prepaypackage.appliances = [
        {
          "id": 1,
          "name": "laptop",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 2,
          "name": "microwave",
          "watt": 1000,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 3,
          "name": "standing fan",
          "brand": "Windy",
          "watt": 60,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 4,
          "name": "plasma tv",
          "watt": 1000,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 5,
          "name": "tv standard",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 6,
          "name": "washing machine",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 7,
          "name": "iron",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 8,
          "name": "single door fridge",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 9,
          "name": "electronic stove",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 10,
          "name": "double door fridge",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 11,
          "name": "ac unit",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 12,
          "name": "water heater",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 13,
          "name": "regular bulb",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 14,
          "name": "flourescent bulb",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }, {
          "id": 15,
          "name": "energy saving bulb",
          "watt": 200,
          "hours": {
            "light": 6,
            "medium": 8,
            "heavy": 10
          },
          "amount": {
            "light": 1,
            "medium": 2,
            "heavy": 4
          }
        }
      ];
      prepaypackage.getAppliances = function(bundle_name) {
        prepaypackage.appliances.forEach(function(appliance, index) {
          return appliance.bundles.forEach(function(bundle, index) {
            if (bundle_name === bundle.name) {
              return prepaypackage.items.push(appliance);
            }
          });
        });
        console.log(prepaypackage.items);
        return prepaypackage.items;
      };
      prepaypackage.calculateUsage = function(bundle_name) {
        prepaypackage.items.forEach(function(appliance, index) {
          return appliance.bundles.forEach(function(bundle, index) {
            if (bundle_name === bundle.name) {
              return prepaypackage.usage += (appliance.watt * RATE_PER_KWH) / 1000;
            }
          });
        });
        return prepaypackage.usage;
      };
      return prepaypackage;
    }
  ]);

}).call(this);
