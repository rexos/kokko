# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create(username: 'deadormi', email:'deadormi@gmail.com',password:'diomerda', role: 'admin')
User.create(username: 'user1', email:'user1@gmail.com',password:'user1', role: 'user')