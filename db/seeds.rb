# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username:  "gadnane",
             email: "ad.gasmi@gmail.com",
             firstname: "Adnane",
             lastname: "Gasmi",
             maxrent: "1000",
             password: "pass",
             password_confirmation: "pass",
             agent: true,
             owner: false,
             customer: false)

User.create!(username:  "gadnane1",
             email: "adnane.gasmi@gmail.com",
             firstname: "Adnane",
             lastname: "Gasmi",
             maxrent: "1000",
             password: "pass",
             password_confirmation: "pass",
             agent: false,
             owner: true,
             customer: false)

User.create!(username:  "gadnane2",
             email: "ad.g@gmail.com",
             firstname: "Adnane",
             lastname: "Gasmi",
             maxrent: "1000",
             password: "pass",
             password_confirmation: "pass",
             agent: false,
             owner: false,
             customer: true)