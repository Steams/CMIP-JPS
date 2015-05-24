angular.module 'CMIP-JPS'
.factory 'BundleFactory',['PrepayPackage',(PrepayPackage)->
  factory = this
  factory.plan = "Custom"
  factory.active ="Light"
  factory.Custom={
    "appliances":[]
  }
  factory.Light = {
    "name":"Light"
    "appliances":[
      {
        "id" : 1
        "name":"laptop"
        "watt": 60
        "hours":6
        "amount":1
      },
    {
      "id" : 2,
      "name":"microwave",
      "watt": 700,
      "hours":0.1
      "amount":1
    },
    {
      "id" : 3,
      "name":"standing fan",
      "brand": "Windy",
      "watt": 20
      "hours":2
      "amount":3
    },
    {
      "id" : 5,
      "name":"tv standard",
      "watt": 200,
      "hours":4
      "amount":1
    },
    {
      "id" : 6,
      "name":"washing machine",
      "watt": 500
      "hours":0.01
      "amount":1
    },
    {
      "id" : 7,
      "name":"iron",
      "watt": 1000,
      "hours":0.5
      "amount":1
    },
    {
      "id" : 8,
      "name":"single door fridge",
      "watt": 3,
      "hours":24
      "amount":1
    },
    {
      "id" : 13,
      "name":"regular bulb",
      "watt": 20,
      "hours":3
      "amount":4
    }
    ]
  }
  factory.Medium = {
    "name":"Light"
    "appliances":[
      {
        "id" : 1
        "name":"laptop"
        "watt": 60
        "hours":6
        "amount":3
      },
    {
      "id" : 2,
      "name":"microwave",
      "watt": 700,
      "hours":0.1
      "amount":1
    },
    {
      "id" : 3,
      "name":"standing fan",
      "brand": "Windy",
      "watt": 20
      "hours":2
      "amount":3
    },
    {
      "id" : 5,
      "name":"tv standard",
      "watt": 200,
      "hours":4
      "amount":2
    },
    {
      "id" : 6,
      "name":"washing machine",
      "watt": 500
      "hours":0.01
      "amount":1
    },
    {
      "id" : 7,
      "name":"iron",
      "watt": 1000,
      "hours":0.5
      "amount":1
    },
    {
      "id" : 8,
      "name":"single door fridge",
      "watt": 3,
      "hours":24
      "amount":1
    },
    {
      "id" : 13,
      "name":"regular bulb",
      "watt": 20,
      "hours":3
      "amount":8
    },
    {
      "id" : 12,
      "name":"water heater",
      "watt": 1120,
      "hours":2,
      "amount":1
    }
    ]
  }

  factory.Heavy = {
    "name":"Light"
    "appliances":[
      {
        "id" : 1
        "name":"laptop"
        "watt": 60
        "hours":6
        "amount":2
      },
    {
      "id" : 2,
      "name":"microwave",
      "watt": 1000,
      "hours":0.1
      "amount":1
    },
    {
      "id" : 3,
      "name":"standing fan",
      "brand": "Windy",
      "watt": 20
      "hours":2
      "amount":3
    },
    {
      "id" : 5,
      "name":"tv standard",
      "watt": 200,
      "hours":4
      "amount":1
    },
    {
      "id" : 6,
      "name":"washing machine",
      "watt": 500
      "hours":0.01
      "amount":1
    },
    {
      "id" : 7,
      "name":"iron",
      "watt": 1000,
      "hours":0.5
      "amount":1
    },
    {
      "id" : 8,
      "name":"single door fridge",
      "watt": 3,
      "hours":24
      "amount":1
    },
    {
      "id" : 13,
      "name":"energy saving bulb",
      "watt": 20,
      "hours":3,
      "amount":10
    }
    {
      "id" : 11,
      "name":"ac unit",
      "watt": 900,
      "hours":12,
      "amount":1
    },
    {
      "id" : 12,
      "name":"water heater",
      "watt": 1120,
      "hours":2,
      "amount":1
    },
    {
      "id" : 9,
      "name":"electronic stove",
      "watt": 2000,
      "hours":0.5,
      "amount":1
    },
    ]
  }
  factory.getBundle = (id)->
    return PrepayPackage.getAppliances(id)

  return factory
]
