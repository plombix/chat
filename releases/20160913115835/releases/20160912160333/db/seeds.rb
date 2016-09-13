# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
color = ['be5a38',
'915752',
'353238',
'be7c4d']
Message.delete_all
ChatRoom.delete_all
User.delete_all
User.create!(email: 'admin@admin.com', password:"password", password_confirmation:"password" )
User.create!(email: 'admin1@admin.com', password:"password", password_confirmation:"password" )
User.create!(email: 'admin2@admin.com', password:"password", password_confirmation:"password" )
35.times do |x|
	ChatRoom.create!( title: FFaker::HipsterIpsum.word , user_id: User.all.first.id, color: color.sample)
end



