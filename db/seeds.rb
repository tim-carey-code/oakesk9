# frozen_string_literal: true

require 'faker'

(18..70).each do |id|
  Blog.create!(
    id: id,
    user_id: User.first.id,
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraphs(number: 5)
  )
end
