10.times do |n|
  User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      password: 'rika',
      password_confirmation: 'rika'
  )
end
      

60.times do |n|
  title = Faker::Food.sushi
  body = Faker::Food.dish
  user = User.offset(rand(User.count)).first
  Board.create!(title: title,
                body: body,
                user: user
  )
end