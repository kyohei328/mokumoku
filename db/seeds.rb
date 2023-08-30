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

# create_table "events", force: :cascade do |t|
#     t.string "title", null: false
#     t.text "content", null: false
#     t.datetime "held_at", null: false
#     t.integer "prefecture_id", null: false
#     t.integer "user_id", null: false
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.index ["prefecture_id"], name: "index_events_on_prefecture_id"
#     t.index ["user_id"], name: "index_events_on_user_id"
#   end


5.times do
    Event.create!(
        title: Faker::Game.title,
        content: Faker::Game.genre,
        held_at: '2023-08-30',
        prefecture_id: '13',
        user_id: rand(1..6)
    )
end