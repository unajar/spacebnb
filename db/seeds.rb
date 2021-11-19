require "faker"
require "open-uri"

Planet.destroy_all
User.destroy_all
User.create!(user_name:"Ben", password: "123456", email: "a@a.a")
User.create!(user_name:"Umberto", password: "1234567", email: "u@u.u")
User.create!(user_name:"Felix", password: "1234567", email: "f@f.f")

file0 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269586/photo-1614728423169-3f65fd722b7e_g8xqvk.jpg')
file1 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269558/photo-1614732484003-ef9881555dc3_drrg7d.jpg')
file2 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269536/photo-1632395627760-72e6eca7f9c7_cou9tj.jpg')
file3 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269513/photo-1523597020744-b68b1edd3e1c_doxhp3.jpg')
file4 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269475/photo-1560507074-b9eb43faab00_qufsxg.jpg')
file5 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269423/photo-1481819613568-3701cbc70156_smflhp.jpg')
file6 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269306/istockphoto-1050329862-170667a_fmy2zl_hcbswx.jpg')
file7 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269284/istockphoto-173228030-170667a_kotumm_yyp3gy.jpg')
file8 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269273/istockphoto-1199281415-170667a_zgndv9_wcolra.jpg')
file9 = URI.open('https://res.cloudinary.com/dmnmqtpct/image/upload/v1637269257/photo-1614732414444-096e5f1122d5_tmy06d_patrio.jpg')

10.times do
  Planet.create!(
    name:    "#{Faker::Space.planet}#{Faker::Number.number(digits: 2)}",
    address: "#{Faker::Space.galaxy}#{Faker::Number.number(digits: 2)}",
    description: Faker::Science.element,
    price:  rand(240000..999999),
    user: User.all.sample
  )
end

planets = Planet.all
planets[0].photo.attach(io: file0, filename: 'planet0.jpg', content_type: 'image/jpg')
planets[1].photo.attach(io: file1, filename: 'planet1.jpg', content_type: 'image/jpg')
planets[2].photo.attach(io: file2, filename: 'planet2.jpg', content_type: 'image/jpg')
planets[3].photo.attach(io: file3, filename: 'planet3.jpg', content_type: 'image/jpg')
planets[4].photo.attach(io: file4, filename: 'planet4.jpg', content_type: 'image/jpg')
planets[5].photo.attach(io: file5, filename: 'planet5.jpg', content_type: 'image/jpg')
planets[6].photo.attach(io: file6, filename: 'planet6.jpg', content_type: 'image/jpg')
planets[7].photo.attach(io: file7, filename: 'planet7.jpg', content_type: 'image/jpg')
planets[8].photo.attach(io: file8, filename: 'planet8.jpg', content_type: 'image/jpg')
planets[9].photo.attach(io: file9, filename: 'planet9.jpg', content_type: 'image/jpg')


# planet = Article.new(title: 'NES', body: "A great console")

# Planet.create!(address: "238251474028 Roswell crater", description: "A nice 122000 rooms in the middle of the crater with a lovely view on the erupting volcano", name: "Venus", price: 100, user: User.first)
# Planet.create!(address: "173671728748 Allien montain", description: "a land of 3 billion square km to play real star wars in the garden", name: "Neptun", price: 100, user: User.first)
# Planet.create!(address: "1 Mercure", description: "Rent the planet just for you, intimist week-en relax to enjoy the warm from the sun", name: "Mercure", price: 100, user: User.first)
# Planet.create!(address: "The moon", description: "Come to see the flag raised in 1969", name: "Moon", price: 100, user: User.first)


Reservation.create!(user: User.second, planet: Planet.first, start_date: "2021-11-28", end_date: "2021-11-30", status: "pending")
Reservation.create!(user: User.second, planet: Planet.second, start_date: "2021-11-28", end_date: "2021-11-30", status: "pending")
