# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Faker::Name.unique.name
puts "Start seeding..."

puts "Creating a bond..."

Bond.create(
  name: 'Squid bond',
  image_url: 'https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/bond.jpeg',
)

Bond.create(
  name: 'Second bond',
  image_url: 'https://www.cheatsheet.com/wp-content/uploads/2021/10/Rainn-Wilson.jpg',
)

puts "Creating users..."

son = User.create(
    first_name: 'Jason',
    last_name: 'Lee',
    phone_number: ENV['JEFF_NUMBER'],
    email: 'json.winner@squidy.com',
    password: '123',
    image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/son.jpeg",
    bond_id: 1
  )

grandpa = User.create(
  first_name: 'Galiber',
  last_name: 'Lee',
  phone_number: ENV['AARON_NUMBER'],
  email: 'Galiber.lee@squidy.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/grandpa.jpeg",
)

poor_girl = User.create(
  first_name: 'Holly',
  last_name: 'Mcdonals',
  phone_number: ENV['CONNOR_NUMBER'],
  email: 'holly.jolly@christmas.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/poor-girl.jpeg",
  bond_id: 1,
)

bad_girl = User.create(
  first_name: 'Stacy',
  last_name: 'Robert',
  phone_number: ENV['CONNOR_NUMBER'],
  email: 'Stacy.robert@example.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/bad-girl.jpeg",
)

bad_guy = User.create(
  first_name: 'Oliver',
  last_name: 'Greedy',
  phone_number: ENV['CONNOR_NUMBER'],
  email: 'Oliver.Greedy@badbad.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/bad-guy.jpeg",
)

doc = User.create(
  first_name: 'Hamilton',
  last_name: 'Organer',
  phone_number: ENV['CONNOR_NUMBER'],
  email: 'bad.doctor@organsell.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/doc.jpeg",
)

rec = User.create(
  first_name: 'rectang',
  last_name: 'gang',
  phone_number: ENV['CONNOR_NUMBER'],
  email: 'rectang.gang@gangang.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/rec.jpeg",
)

cir = User.create(
  first_name: 'circle',
  last_name: 'gang',
  phone_number: ENV['CONNOR_NUMBER'],
  email: 'circle.gang@gangang.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/circle.jpeg",
)

cir = User.create(
  first_name: 'circle',
  last_name: 'gang',
  phone_number: ENV['CONNOR_NUMBER'],
  email: 'circle.gang@gangang.com',
  password: '123',
  image_url: "https://raw.githubusercontent.com/aaron-s-kim/medmory/master/client/src/assets/images/circle.jpeg",
)

15.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.user[:email],
    password: '123',
    image_url: "https://i.pravatar.cc/150?img=#{rand(1..70)}",
    bond_id: rand(1..2)
  )
end

30.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.user[:email],
    password: '123',
    image_url: "https://i.pravatar.cc/150?img=#{rand(1..70)}",
  )
end

User.create(
  first_name: 'Jason',
  last_name: 'Kim',
  email: 'json.kim@dosdps.com',
  password: '123'
)

User.create(
  first_name: 'Yarovski',
  last_name: 'Robert',
  email: 'Yarovski.Robert@vdemopru.com',
  password: '123'
)

User.create(
  first_name: 'Jesse',
  last_name: 'Robert',
  email: 'Jesse.Robert@idkwtosa.com',
  password: '123'
)

puts "Creating med groups..."

med_group1 = MedGroup.create(
  name: 'Life saver',
  detail: 'take daily',
  user_id: jeff.id
)

med_group2 = MedGroup.create(
  name: 'Vitamins',
  detail: 'take daily',
  compliance_time: 10,
  user_id: aaron.id,
  message_to: jeff.id
)

med_group3 = MedGroup.create(
  name: 'Vitamins',
  detail: 'take daily',
  compliance_time: 10,
  user_id: connor.id,
  message_to: aaron.id
)

med_group4 = MedGroup.create(
  name: 'The Drugs',
  detail: 'take twice a day',
  compliance_time: 12,
  user_id: aaron.id,
  message_to: jeff.id
)

med_group5 = MedGroup.create(
  name: 'Hypertension Medications',
  detail: 'take once a day',
  compliance_time: 12,
  user_id: aaron.id,
  message_to: connor.id
)

puts "Creating meds..."

Med.create(
  name: 'life saver pill 1',
  dosage: 120,
  measure: 'mcg',
  num: 1,
  pill_type: 'capsule',
  med_group_id: med_group1.id
)

Med.create(
  name: 'life saver pill 2',
  dosage: 10,
  measure: 'mcg',
  num: 1,
  pill_type: 'capsule',
  med_group_id: med_group1.id
)

Med.create(
  name: 'Vitamin C',
  dosage: 1000,
  measure: 'mg',
  num: 1,
  pill_type: 'tablet',
  med_group_id: med_group2.id
)

Med.create(
  name: 'Vitamin D3',
  dosage: 25,
  measure: 'mcg',
  num: 1,
  pill_type: 'tablet',
  med_group_id: med_group2.id
)

Med.create(
  name: 'Vitamin C',
  dosage: 500,
  measure: 'mg',
  num: 1,
  pill_type: 'tablet',
  med_group_id: med_group3.id
)

Med.create(
  name: 'Multi vitamins',
  num: 1,
  pill_type: 'capsule',
  med_group_id: med_group3.id
)

Med.create(
  name: 'Marine Stimpack',
  dosage: 500,
  measure: 'mg',
  num: 1,
  pill_type: 'tablet',
  med_group_id: med_group4.id
)

Med.create(
  name: 'NZT-48',
  dosage: 500,
  measure: 'mg',
  num: 1,
  pill_type: 'pill',
  med_group_id: med_group4.id
)

puts "Creating med group histories..."

for i in 1..23 do
  MedHistory.create(
  med_group_id: med_group1.id
).update(created_at: "Jan #{i} 2022 #{rand(7..22)}:00")
end

for i in 1..23 do
  MedHistory.create(
  med_group_id: med_group2.id
).update(created_at: "Jan #{i} 2022 #{rand(7..16)}:00")
end

for i in 1..23 do
  MedHistory.create(
  med_group_id: med_group3.id
).update(created_at: "Jan #{i} 2022 #{rand(7..16)}:00")
end

for i in 1..23 do
  MedHistory.create(
  med_group_id: med_group4.id
).update(created_at: "Jan #{i} 2022 #{rand(7..16)}:00")
end

for i in 1..15 do
  MedHistory.create(
  med_group_id: med_group5.id
).update(created_at: "Jan #{i} 2022 #{rand(7..16)}:00")
end

for i in 18..19 do
  MedHistory.create(
  med_group_id: med_group5.id
).update(created_at: "Jan #{i} 2022 #{rand(7..16)}:00")
end

puts "Creating bond invites..."

puts "finish seeding!"