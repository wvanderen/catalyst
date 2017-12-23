 require 'random_data'

 # Create Practices
 50.times do
 # #1
   Practice.create!(
 # #2
     title:  Faker::Ancient.god,
     description:   Faker::HarryPotter.quote,
     experience: rand(1..100)
   )
 end
 practices = Practice.all
 

 puts "Seed finished"
 puts "#{Practice.count} practices created"
