Planet.destroy_all
User.destroy_all

User.create!(user_name:"Ben", password: "123456", email: "a@a.a")

Planet.create!(address: "238251474028 Roswell crater", description: "A nice 122000 rooms in the middle of the crater with a lovely view on the erupting volcano", name: "Venus", price: 100, user: User.first)
Planet.create!(address: "173671728748 Allien montain", description: "a land of 3 billion square km to play real star wars in the garden", name: "Neptun", price: 100, user: User.first)
Planet.create!(address: "1 Mercure", description: "Rent the planet just for you, intimist week-en relax to enjoy the warm from the sun", name: "Mercure", price: 100, user: User.first)
Planet.create!(address: "The moon", description: "Come to see the flag raised in 1969", name: "Moon", price: 100, user: User.first)

User.create!(user_name: "Umberto", password: "1234567", email: "u@u.u")

Planet.create!(address: "1848 xandar road", description: "A cozy planet with a very constant weather. Temperature around -200°C", name: "Xandar", price: 100, user: User.second)
Planet.create!(address: "4066 hala road", description: "Hala is the homeworld of the Kree and the capital planet of the Kree Empire.", name: "Hala", price: 100, user: User.second)

Reservation.create!(user: User.second, planet: Planet.first, start_date: "2021-11-18", end_date: "2021-11-20", status: "pending")
Reservation.create!(user: User.second, planet: Planet.second, start_date: "2021-11-18", end_date: "2021-11-20", status: "pending")
