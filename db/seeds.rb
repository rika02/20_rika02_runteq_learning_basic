20.times do |n|
  title = Faker::Food.sushi
  body = Faker::Food.dish
  user = User.offset(rand(User.count)).first
  Board.create!(title: title,
                body: body,
                user: user
                )
end
