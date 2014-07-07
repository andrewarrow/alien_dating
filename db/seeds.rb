# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

names = ["Noah", "Sophia", "Liam", "Emma", "Jacob", "Olivia", "Mason", "Isabella", "William", "Ava"]
planets = ['mercury', 'venus', 'mars', 'jupiter', 'saturn', 'uranus', 'neptune']
about_me = ['I am a blonde haired alien with big eyes', 'I am a short alien with a nice smile', 'I am a tall alien with big muscles',
            'I am a brunette alient with a nice smile', 'I a red haired alien with pretty eyes']
what_i_want = ['I am looking for a short alien with a nice smile', 'I am looking for a tall alien with big eyes', 'I am looking for a muscular alien',
               'I am looking for a red haird alien', 'I am looking for a brunette with pretty eyes']

200.times.map do |i|
  User.create!([:name => names[rand(names.size)], :from_planet => planets[rand(planets.size)], :wants_planet => planets[rand(planets.size)], 
                :about_me => about_me[rand(about_me.size)], :what_i_want => what_i_want[rand(what_i_want.size)]])
end
