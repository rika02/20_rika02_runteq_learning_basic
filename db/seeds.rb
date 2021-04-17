20.times do |n|
  title = Faker::Food.sushi
  body = Faker::Food.dish
  user = User.find(User.ids.sample)
  Board.create!(title: title,
                body: body,
                user: user
                )
end
