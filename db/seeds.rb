 require 'random_data'

 # Create Practices
 50.times do
 # #1
   Practice.create!(
 # #2
     title:  RandomData.random_sentence,
     description:   RandomData.random_paragraph,
     duration: rand(1..100),
     experience: rand(1..100)
   )
 end
 practices = Practice.all
 

 puts "Seed finished"
 puts "#{Practice.count} practices created"
