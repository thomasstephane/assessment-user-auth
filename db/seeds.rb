require 'faker'

10.times do
  User.create(name:     Faker::Name.name, 
              email:    Faker::Internet.email,
              password: '1234')
end
