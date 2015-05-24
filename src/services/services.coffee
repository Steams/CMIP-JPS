angular.module 'CMIP-JPS'
.service 'PrepayPackage',[()->
  RATE_PER_KWH = 40
  prepaypackage = {}
  prepaypackage.appliances = [
    {
        "id" : 1
        "name":"laptop"
        "watt": 200
        "hours":{"light":6,"medium":8,"heavy":10}
        "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 2,
      "name":"microwave",
      "watt": 1000,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 3,
      "name":"standing fan",
      "brand": "Windy",
      "watt": 60
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 4,
      "name":"plasma tv",
      "watt": 1000,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    }
    {
      "id" : 5,
      "name":"tv standard",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 6,
      "name":"washing machine",
      "watt": 200
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 7,
      "name":"iron",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 8,
      "name":"single door fridge",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 9,
      "name":"electronic stove",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 10,
      "name":"double door fridge",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    }
    {
      "id" : 11,
      "name":"ac unit",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    },
    {
      "id" : 12,
      "name":"water heater",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    }
    {
      "id" : 13,
      "name":"regular bulb",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    }
    {
      "id" : 14,
      "name":"flourescent bulb",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    }
    {
      "id" : 15,
      "name":"energy saving bulb",
      "watt": 200,
      "hours":{"light":6,"medium":8,"heavy":10}
      "amount":{"light":1,"medium":2,"heavy":4}
    }
  ]

  prepaypackage.getAppliances = (bundle_name)->
    prepaypackage.appliances.forEach (appliance, index)->
      appliance.bundles.forEach((bundle, index)->
        if(bundle_name == bundle.name)
          prepaypackage.items.push(appliance)
    )

    console.log(prepaypackage.items)
    return prepaypackage.items


  prepaypackage.calculateUsage = (bundle_name)->
    prepaypackage.items.forEach((appliance, index)->
      appliance.bundles.forEach((bundle, index)->
        if(bundle_name == bundle.name)
          prepaypackage.usage += ((appliance.watt * RATE_PER_KWH)/1000)
      )
    )
    return prepaypackage.usage


  return prepaypackage
]
