# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach(Rails.root.join('movie_list.csv')) do |row|
  Movie.create(
    title: row[0],
    remote_image_url_url: row[1],
    desc: row[2]
  )
end

# 1000.times do |i|
#   Movie.create(
#     user_id: "#{i}"
#     title: "피카피카모험",
#     desc: "피카츄와 함께하는 디지몬 어드벤처",
#     image_url: "../picachew.jpg"
#   )
# end

  # 1000.times do |i|
  #   Tweet.create(
  #     title: "#{i}ë²ˆì§¸ ê¸€",
  #     content: Faker::Food.measurement
  #   )
  # end
