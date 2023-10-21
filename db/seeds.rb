# frozen_string_literal: true

require 'faker'

User.create!(email: 'example@email.com', password: 'password', admin: true, first_name: 'Foo', last_name: 'Bar', password_confirmation: 'password')

(18..70).each do |id|
  Blog.create!(
    id: id,
    user_id: User.first.id,
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs(number: 5)
  )
end
