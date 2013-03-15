# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#creazione user
User.delete_all
User.create(username: 'deadormi', email:'dea.dormi@gmail.com',password:'diomerda',password_confirmation:'diomerda', role: 'admin')
User.create(username: 'user1', email:'user1@gmail.com',password:'user12',password_confirmation:'user12', role: 'user')

#creazione esercizi
Exercise.delete_all
#difficolta mettere Easy o Medium o Hard
@ex1 = Exercise.create(:description => 'Descrizione esercizio 1', :difficulty => 'Easy', :name => 'esercizio 1', :video_url => 'http://www.youtube.com/watch?v=xat1GVnl8-k')

#creazione training program
Program.delete_all
@prog1 = Program.create(:id => 1,:title => 'Training Test 1',:description => 'Descrizione training test 1')

#creazione lesson di un training
Lesson.delete_all
@lesson1 = @prog1.lessons.new(:title => 'test_lesson')
@lesson1.save

#creazione associationi
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson1.id, :repetitions => 1)