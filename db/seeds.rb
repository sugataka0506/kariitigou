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


["エンジニア", "月給25万以上", "金", "動物", "業界", "人", "地方", "国", "地球", "数字", "飲み物", "お菓子", "コップ", "携帯", "趣味", "ぺん", "本", "野菜", "鋼", "歌"].each do |name|
  Tag.find_or_create_by(name: name)
end
