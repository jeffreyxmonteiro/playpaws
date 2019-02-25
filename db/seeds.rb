require 'faker'
Playdate.destroy_all
Dog.destroy_all
Owner.destroy_all
User.destroy_all

DOGIMAGES = [
            "https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260",
            "https://images.pexels.com/photos/350428/pexels-photo-350428.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/374906/pexels-photo-374906.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/160846/french-bulldog-summer-smile-joy-160846.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/257540/pexels-photo-257540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/235805/pexels-photo-235805.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/164186/pexels-photo-164186.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/9080/night-garden-yellow-animal.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/1591939/pexels-photo-1591939.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/97082/weimaraner-puppy-dog-snout-97082.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
            "https://images.pexels.com/photos/1124002/pexels-photo-1124002.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
            ]

puts "Creating seeds...."

50.times do
  Owner.create!(
    username: "#{Faker::Name.first_name}#{rand(1000)}",
    avatar_url: [
                "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/842980/pexels-photo-842980.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1139743/pexels-photo-1139743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                "https://images.pexels.com/photos/227294/pexels-photo-227294.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
                ].sample,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: "I love #{Faker::Creature::Dog.breed}.",
    location: Faker::Address.city,
    email: Faker::Internet.email,
    password: "ownersecret"
    )
end

50.times do
  User.create!(
    username: Faker::Name.first_name,
    avatar_url: [
              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/555790/pexels-photo-555790.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/247206/pexels-photo-247206.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/245239/pexels-photo-245239.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/965324/pexels-photo-965324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1689731/pexels-photo-1689731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1722198/pexels-photo-1722198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
              "https://images.pexels.com/photos/1001180/pexels-photo-1001180.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
              ].sample,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: "I love #{Faker::Creature::Dog.breed}.",
    email: Faker::Internet.email,
    password: "usersecret"
    )
end

Owner.all.each do |owner|
  3.times do
    Dog.create!(
      name: Faker::Creature::Dog.name,
      description: "#{Faker::Creature::Dog.size} #{Faker::Creature::Dog.gender} #{Faker::Creature::Dog.age}, #{Faker::Creature::Dog.sound}",
      owner_id: owner.id,
      breed: Faker::Creature::Dog.breed,
      available_dates: [Faker::Date.forward(365), Faker::Date.forward(365), Faker::Date.forward(365)],
      images_url: DOGIMAGES.sample(3)
    )
  end
end

Dog.all.each do |dog|
  5.times do
    Playdate.create!(
      user_id: User.all.sample.id,
      dog_id: dog.id,
      date: dog.available_dates.sample,
      payment: ["cash", "credit"].sample,
      completed: [true, false].sample
      )
  end
end

puts "Finished creating seeds :D"

=begin
dogs
"https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"
"https://images.pexels.com/photos/350428/pexels-photo-350428.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/374906/pexels-photo-374906.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/160846/french-bulldog-summer-smile-joy-160846.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/257540/pexels-photo-257540.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/235805/pexels-photo-235805.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/164186/pexels-photo-164186.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/9080/night-garden-yellow-animal.jpg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1591939/pexels-photo-1591939.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/97082/weimaraner-puppy-dog-snout-97082.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1124002/pexels-photo-1124002.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"

user
"https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/555790/pexels-photo-555790.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1043471/pexels-photo-1043471.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/697509/pexels-photo-697509.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/247206/pexels-photo-247206.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/245239/pexels-photo-245239.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/965324/pexels-photo-965324.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1689731/pexels-photo-1689731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1722198/pexels-photo-1722198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/762020/pexels-photo-762020.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1001180/pexels-photo-1001180.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"


owner
"https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/769772/pexels-photo-769772.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1516680/pexels-photo-1516680.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/842980/pexels-photo-842980.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1139743/pexels-photo-1139743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1212984/pexels-photo-1212984.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/1024311/pexels-photo-1024311.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/775358/pexels-photo-775358.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"
"https://images.pexels.com/photos/227294/pexels-photo-227294.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"

=end
