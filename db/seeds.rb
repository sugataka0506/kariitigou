# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(2..60).each do |i|
  user = User.find_or_initialize_by(id: i)
  user.name = "name #{i}"
  user.email = "test#{i}@gmail.com"
  user.password = 'password'
  user.save!
end