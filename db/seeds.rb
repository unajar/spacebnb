Planet.destroy_all
User.destroy_all

User.create!(user_name:"Ben", password: "123456", email: "a@a.a")

Planet.create!(address: "238251474028 Roswell crater", description: "A nice 122000 rooms in the middle of the crater with a lovely view on the erupting volcano", name: "Venus", price: "547 374 374$", user: User.first)
Planet.create!(address: "173671728748 Allien montain", description: "a land of 3 billion square km to play real star wars in the garden", name: "Neptun", price: "299 999 999$", user: User.first)
Planet.create!(address: "1 Mercure", description: "Rent the planet just for you, intimist week-en relax to enjoy the warm from the sun", name: "Mercure", price: "1 000 000 000$", user: User.first)
Planet.create!(address: "The moon", description: "Come to see the flag raised in 1969", name: "Moon", price: "547 374 374$", user: User.first)
