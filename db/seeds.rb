require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# =====================================clients===========================================================================================================================================================================================================================
20.times do
     Client.create(first_name:Faker::Name.first_name ,last_name:Faker::Name.last_name ,password:"password",image:Faker::Avatar.image,domain:Faker::IndustrySegments.industry)
end


# =====================================developers===========================================================================================================================================================================================================================
20.times do
     Developer.create(first_name:Faker::Name.first_name ,last_name:Faker::Name.last_name ,password:"password",image:Faker::Avatar.image,experience:"#{Faker::Number.within(range: 1..20)} years",skill:Faker::ProgrammingLanguage.name)
end



# =====================================projects===========================================================================================================================================================================================================================
50.times do
    Project.create(title:Faker::Company.name,image:Faker::Company.logo,description:Faker::Lorem.paragraphs,stipulation:Faker::Lorem.sentences(number:3),client_id:Client.all.sample.id)
end


# =====================================contracts===========================================================================================================================================================================================================================
30.times do
    Contract.create(signature:Developer.all.sample.first_name,project_id:Project.all.sample.id,developer_id:Developer.all.sample.id )
end


puts("seeded successfully!...")