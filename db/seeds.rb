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
User.create(username: 'usertest', email:'user1@gmail.com',password:'usertest',password_confirmation:'usertest', role: 'user')

#creazione esercizi
Exercise.delete_all
#difficolta mettere Easy o Medium o Hard
@ex1 = Exercise.create(:description => 'Descrizione esercizio 1', :difficulty => 'Easy', :name => 'esercizio 1', :video_url => 'http://www.youtube.com/watch?v=xat1GVnl8-k')
@ex2 = Exercise.create(:description => 'Descrizione esercizio 2', :difficulty => 'Medium', :name => 'esercizio 2', :video_url => 'http://www.youtube.com/watch?v=9bZkp7q19f0')
@ex3 = Exercise.create(:description => 'Descrizione esercizio 3', :difficulty => 'Hard', :name => 'esercizio 3', :video_url => 'http://www.youtube.com/watch?v=fdv21GPsyBQ')
@ex4 = Exercise.create(:description => 'Descrizione esercizio 4', :difficulty => 'Easy', :name => 'esercizio 4', :video_url => 'http://www.youtube.com/watch?v=r1ImrLiiGU0')

#creazione training program
Program.delete_all
@prog1 = Program.create(:title => 'Training Test 1',:description => 'Descrizione training test 1')
@prog2 = Program.create(:title => 'Training Test 2',:description => 'Descrizione training test 2')
@prog3 = Program.create(:title => 'Training Test 3',:description => 'Descrizione training test 3')
@prog4 = Program.create(:title => 'Training Test 4',:description => 'Descrizione training test 4')

#creazione lesson di un training
Lesson.delete_all

#lesson prog1
@lesson1_1 = @prog1.lessons.new(:title => 'lesson1')
@lesson1_1.save
@lesson1_2 = @prog1.lessons.new(:title => 'lesson2')
@lesson1_2.save
@lesson1_3 = @prog1.lessons.new(:title => 'lesson3')
@lesson1_3.save
@lesson1_4 = @prog1.lessons.new(:title => 'lesson4')
@lesson1_4.save

 #lesson prog2
@lesson2_1 = @prog2.lessons.new(:title => 'lesson1')
@lesson2_1.save
@lesson2_2 = @prog2.lessons.new(:title => 'lesson2')
@lesson2_2.save
@lesson2_3 = @prog2.lessons.new(:title => 'lesson3')
@lesson2_3.save
@lesson2_4 = @prog2.lessons.new(:title => 'lesson4')
@lesson2_4.save

#lesson prog3
@lesson3_1 = @prog3.lessons.new(:title => 'lesson1')
@lesson3_1.save
@lesson3_2 = @prog3.lessons.new(:title => 'lesson2')
@lesson3_2.save
@lesson3_3 = @prog3.lessons.new(:title => 'lesson3')
@lesson3_3.save
@lesson3_4 = @prog3.lessons.new(:title => 'lesson4')
@lesson3_4.save

#lesson prog4
@lesson4_1 = @prog4.lessons.new(:title => 'lesson1')
@lesson4_1.save
@lesson4_2 = @prog4.lessons.new(:title => 'lesson2')
@lesson4_2.save
@lesson4_3 = @prog4.lessons.new(:title => 'lesson3')
@lesson4_3.save
@lesson4_4 = @prog4.lessons.new(:title => 'lesson4')
@lesson4_4.save

#creazione associationi
Association.delete_all
#associazioni lesson1_1
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson1_1.id, :repetitions => 1)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson1_1.id, :repetitions => 1)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson1_1.id, :repetitions => 1)

#associazione lesson1_2
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson1_2.id, :repetitions => 1)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson1_2.id, :repetitions => 1)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson1_2.id, :repetitions => 1)

#associazione lesson1_3
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson1_3.id, :repetitions => 1)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson1_3.id, :repetitions => 1)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson1_3.id, :repetitions => 1)

#associazione lesson1_4
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson1_4.id, :repetitions => 1)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson1_4.id, :repetitions => 1)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson1_4.id, :repetitions => 1)

#associazioni lesson2_1
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson2_1.id, :repetitions => 2)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson2_1.id, :repetitions => 2)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson2_1.id, :repetitions => 2)

#associazione lesson2_2
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson2_2.id, :repetitions => 2)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson2_2.id, :repetitions => 2)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson2_2.id, :repetitions => 2)

#associazione lesson2_3
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson2_3.id, :repetitions => 2)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson2_3.id, :repetitions => 2)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson2_3.id, :repetitions => 2)

#associazione lesson2_4
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson2_4.id, :repetitions => 2)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson2_4.id, :repetitions => 2)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson2_4.id, :repetitions => 2)

#associazioni lesson3_1
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson3_1.id, :repetitions => 3)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson3_1.id, :repetitions => 3)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson3_1.id, :repetitions => 3)

#associazione lesson3_2
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson3_2.id, :repetitions => 3)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson3_2.id, :repetitions => 3)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson3_2.id, :repetitions => 3)

#associazione lesson3_3
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson3_3.id, :repetitions => 3)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson3_3.id, :repetitions => 3)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson3_3.id, :repetitions => 3)

#associazione lesson3_4
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson3_4.id, :repetitions => 3)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson3_4.id, :repetitions => 3)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson3_4.id, :repetitions => 3)

#associazioni lesson4_1
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson4_1.id, :repetitions => 4)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson4_1.id, :repetitions => 4)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson4_1.id, :repetitions => 4)

#associazione lesson4_2
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson4_2.id, :repetitions => 4)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson4_2.id, :repetitions => 4)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson4_2.id, :repetitions => 4)

#associazione lesson4_3
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson4_3.id, :repetitions => 4)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson4_3.id, :repetitions => 4)
Association.create(:exercise_id => @ex4.id,:lesson_id => @lesson4_3.id, :repetitions => 4)

#associazione lesson4_4
Association.create(:exercise_id => @ex1.id,:lesson_id => @lesson4_4.id, :repetitions => 4)
Association.create(:exercise_id => @ex2.id,:lesson_id => @lesson4_4.id, :repetitions => 4)
Association.create(:exercise_id => @ex3.id,:lesson_id => @lesson4_4.id, :repetitions => 4)