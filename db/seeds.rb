require 'faker'
Playdate.destroy_all
Dog.destroy_all
Owner.destroy_all
User.destroy_all

puts "Creating seeds...."

50.times do
  Owner.create!(
    username: "#{Faker::Name.first_name}#{rand(1000)}",
    avatar_url: "",
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
    avatar_url: "",
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
      available_dates: [Faker::Date.forward(365), Faker::Date.forward(365), Faker::Date.forward(365)]
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
