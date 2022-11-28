puts 'Seed...'

Tesla.create(
    [
        {model:"Model Y", image_url:"https://tesla-ecommerce-reactjs.netlify.app/images/model-y.jpg",
        price:"41940",instock:true, highlights:"Auto Lane Change, Autopark, Summon, Full Self-Driving Computer,Traffic Light,Stop Sign Control", description:"With the most storage space and towing capacity of any electric SUV, and seating for up to seven adults, Model X delivers maximum utility. Front doors open and close automatically, Falcon Wing doors allow for easier loading and a standard trailer hitch lets you bring your gear anywhere you go."
        },
        {model:"Model 3", image_url:"https://tesla-ecommerce-reactjs.netlify.app/images/model-3.jpg",
        price:"53941",instock:false, highlights:"Auto Lane Change, Autopark, Summon, Full Self-Driving Computer,Traffic Light,Stop Sign Control", description:"Tesla All-Wheel Drive has two independent motors for improved redundancy, each with only one moving part for minimal maintenance and maximum durability. Unlike traditional all-wheel drive systems, they digitally control torque to the front and rear wheels for far better handling and traction control."
        },
        {model:"Model S", image_url:"https://tesla-ecommerce-reactjs.netlify.app/images/model-s.jpg",
        price:"23942",instock:true, highlights:"Auto Lane Change, Autopark, Summon, Full Self-Driving Computer,Traffic Light,Stop Sign Control", description:"Tesla designed Model S from the ground-up as an electric vehicle — each component, including batteries, motors and exterior aerodynamics are optimized to benefit from one another and create one of the most efficient, yet unbelievably powerful vehicles ever built.
        "
        },
        {model:"Model X", image_url:"https://tesla-ecommerce-reactjs.netlify.app/images/model-x.jpg",
        price:"37943",instock:false, highlights:"Auto Lane Change, Autopark, Summon, Full Self-Driving Computer,Traffic Light,Stop Sign Control", description:"Tesla designed Model X from the ground-up as an electric vehicle — each component, including batteries, motors and exterior aerodynamics are optimized to benefit from one another and create one of the most efficient, yet unbelievably powerful vehicles ever built."
        }

    ]
)

User.create(
    [
        {name: "John Doe", comment:"Nice features, I was impressed by the falcon door.", rating:5},
        {name: "Jane Doe", comment:"Nice features, I was impressed by the vertical door.",rating:3},
        {name: "Gregory", comment:"Not worth the price",rating:1},
        {name: "Linda", comment:"Favourite Purchase",rating:4},
        {name: "Leo", comment:"Tesla is the way to go",rating:3}
    ]
)

5.times do 
    Review.create(
        user_id: User.all.sample.id,
        tesla_id: Tesla.all.sample.id
    )
end

puts 'Done!'