# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development? or Rails.env.staging?
  email = "info@example.com"
  unless User.find_by(email: email)
    user = User.create!(email: email) do |user|
      user.first_name = "Taro"
      user.last_name = "Yamada"
      user.password = "password"
      user.memo = "memo"
      user.skip_confirmation!
    end
  end
end
