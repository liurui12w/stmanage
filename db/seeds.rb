# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email=>"admin@ebuychem.com", :password=>"admin123", :password_confirmation=>"admin123",:name => "admin")
User.create(:email=>"liurui@qq.com", :password=>"admin123", :password_confirmation=>"admin123",:name => "employee")
User.create(:email=>"liurui1@qq.com", :password=>"admin123", :password_confirmation=>"admin123",:name => "personnel")
User.create(:email=>"liurui2@qq.com", :password=>"admin123", :password_confirmation=>"admin123",:name => "batman")
