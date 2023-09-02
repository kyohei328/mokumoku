# frozen_string_literal: true

require "./db/environment/#{Rails.env.downcase}.rb"

5.times do
    User.create!(
        email: Faker::Internet.email,
        name: Faker::JapaneseMedia::StudioGhibli.character,
        password: 'password',
        password_confirmation: 'password',
    )
end

5.times do
    Event.create!(
        title: Faker::Game.title,
        content: Faker::Game.genre,
        held_at: '2023-08-30',
        prefecture_id: '13',
        user_id: rand(1..6)
    )
end