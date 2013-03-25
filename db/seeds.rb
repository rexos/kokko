#creazione user
User.delete_all
User.create(username: 'deadormi', email:'dea.dormi@gmail.com',password:'diomerda',password_confirmation:'diomerda', role: 'admin')
User.create(username: 'usertest', email:'user1@gmail.com',password:'usertest',password_confirmation:'usertest', role: 'user')

#creazione esercizi
Exercise.delete_all
#difficolta mettere Easy o Medium o Hard
@full_tandem_stand = Exercise.create(:description => 'Tieniti con le mani ad una sedia e metti un piede, in fila, davanti all\'altro e mantieni l\'equilibrio per 10 secondi poi stacca le mani dalla sedia e mantieni la posizione per altri 10 secondi. Inverti la posizione dei piedi e ripeti. Materiali:Sedia.', 
									 :difficulty => 'Easy', 
									 :name => 'Full Tandem Stand', 
									 :video_url => 'http://www.youtube.com/watch?v=VC9uQ96CvcA')
@hell_to_toe_walk = Exercise.create(:description => 'Cammina in linea retta mettendo un piede in fila davanti all\'altro cercando di mantenere l\'equilibrio aiutandoti anche con le braccia. Materiali:Sedia.',
									:difficulty => 'Easy', 
									:name => 'Hell to toe Walk',
									:video_url => 'http://www.youtube.com/watch?v=3Pbve2rN4Pc')
@one_leg_stand = Exercise.create(:description => 'Aiutandoti con una sedia, se necessario, alza la gamba destra all\'indietro fino a formare un angolo di novanta gradi con il ginocchio. Mantieni la posizione di equilibrio per 15  secondi poi cambia gamba. Materiali:Sedia.',
								 :difficulty => 'Easy', 
								 :name => 'One Leg Stand',
								 :video_url => 'http://www.youtube.com/watch?v=WLBdcT4BPCE')
@chair_stand = Exercise.create(:description => 'A braccia incrociate siediti e rialzati da una sedia. Materiali:Sedia.',
								 :difficulty => 'Easy', 
								 :name => 'Chair Stand',
								 :video_url => 'http://www.youtube.com/watch?v=TCVxy7JoWDA')
@seated_hip_abduction = Exercise.create(:description => 'Seduto su una sedia con dei pesi alle caviglie allarga lateralmente una gamba. Cambia gamba e ripeti. Materiali:Sedia,pesi per caviglie',
								 :difficulty => 'Easy', 
								 :name => 'Seated Hip Abduction',
								 :video_url => 'http://www.youtube.com/watch?v=bDKxFQZfkt8')
@seated_hip_flexion = Exercise.create(:description => 'Seduto su una sedia alza una gamba alla volta portandola verso il petto. Materiali:Sedia.',
								 :difficulty => 'Easy', 
								 :name => 'Seated Hip Flexion',
								 :video_url => 'http://www.youtube.com/watch?v=L_PegpXmaWI')
@seated_leg_extension = Exercise.create(:description => 'Seduto su una sedia, con dei pesi alle caviglie, estendi e fletti una gamba alla volta alternandole. Materiali:Sedia,pesi per caviglie.',
								 :difficulty => 'Easy', 
								 :name => 'Seated Leg Exstension',
								 :video_url => 'http://www.youtube.com/watch?v=h-qRd7ma3B0')
@standing_hell_lift = Exercise.create(:description => 'Usando una sedia come supporto e con dei pesi alle caviglie spingiti verso l\'alto appoggiandoti sulle punte. Materiali:Sedia,Pesi per Caviglie.',
								 :difficulty => 'Easy', 
								 :name => 'Standing Hell Lift',
								 :video_url => 'http://www.youtube.com/watch?v=RtV4gmbt1Dc')
@standing_leg_curl = Exercise.create(:description => 'Aiutandoti con una sedia, se necessario, alza la gamba destra all\'indietro fino a formare un angolo di novanta gradi con il ginocchio. Materiali:Sedia,pesi per caviglie.',
								 :difficulty => 'Easy', 
								 :name => 'Standing Leg Curl',
								 :video_url => 'http://www.youtube.com/watch?v=BOAZE-8iS3Q')
@seated_sit_ups = Exercise.create(:description => 'Seduto sul bordo della sedia porta indietro la schiena fino a toccare lo schienale ma senza appoggiarti. Mantieni la posizione per qualche secondo e torna alla posizione di partenza. Materiali:Sedia.',
								 :difficulty => 'Easy', 
								 :name => 'Seated sit Ups',
								 :video_url => 'http://www.youtube.com/watch?v=erxHw5ZU1rI')
@seated_hip_adduction = Exercise.create(:description => 'Seduto su una sedia metti il pallone tra le cosce e cerca di comprimerlo il piu possibile per alcuni secondi per poi rilasciarlo senza farlo cadere. Materiali:Sedia,palla per esercizi.',
								 :difficulty => 'Easy', 
								 :name => 'Seated Hip Adduction',
								 :video_url => 'http://www.youtube.com/watch?v=8FWlYpfZQnE')
@standing_toe_lift = Exercise.create(:description => 'Seduto su una sedia spingi le punte dei piedi verso l\'alto mantenendo i talloni a terra. Materiali:Sedia.',
								 :difficulty => 'Easy', 
								 :name => 'Standing Toe Lift',
								 :video_url => 'http://www.youtube.com/watch?v=7yjyVyNG8-I')
@seated_side_arms_with_resistence = Exercise.create(:description => 'Seduto su una sedia prendi una fascia elastica estendendo le braccia verso l\'esterno facendola passare sotto i piedi. alza le braccia verso l\'alto e l\'esterno portando la fascia elastica in estensione, mantieni la posizione per alcuni secondi e rilascia. Materiali:Sedia,fascia elastica.',
								 :difficulty => 'Easy', 
								 :name => 'Seated Aide Arms With Resistance',
								 :video_url => 'http://www.youtube.com/watch?v=qOhHakQgxVs')
@arms_circles = Exercise.create(:description => 'Seduto su una sedia fai roteare le braccia in maniera circolare. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Arms Circles',
								 :video_url => 'http://www.youtube.com/watch?v=8q4xt1kVApo')
@hip_abduction_and_adduction = Exercise.create(:description => 'Seduta su una sedia allarga lateralmente una gamba e poi l\'altra. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Hip Abduction an Adduction',
								 :video_url => 'http://www.youtube.com/watch?v=QUbaotseOQ4')
@leg_raises = Exercise.create(:description => 'Seduto su una sedia porta una gamba alla volta verso il petto. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Leg Raises',
								 :video_url => 'http://www.youtube.com/watch?v=KKXR54zNt3c')
@pointer_foot_to_hell = Exercise.create(:description => 'Seduta su una sedia tocca il terreno prima con il tacco e poi con la punta di una gamba. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Pointer Foot to Hell',
								 :video_url => 'http://www.youtube.com/watch?v=AV6TEO8zkMI')
@rest_head_lef_and_right = Exercise.create(:description => 'Su una sedia porta il capo prima verso destra poi verso sinistra. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Rest Head Left and Right',
								 :video_url => 'http://www.youtube.com/watch?v=fFWHbS2AZ_M')
@shoulder_rotation = Exercise.create(:description => 'Seduta su una sedia fai roteare le spalle contemporaneamente indietro. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Shoulder Rotation',
								 :video_url => 'http://www.youtube.com/watch?v=pwqL8uTGjrk')
@seated_leg_stretch = Exercise.create(:description => 'Seduto su una sedia estendi una gamba e porta avanti in busto verso la punta del piede. Mantieni la posizione per circa 10 secondi e cambia gamba. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Seated Leg Stretch',
								 :video_url => 'http://www.youtube.com/watch?v=EqLYhvIXtzw')
@seated_hip_stretch = Exercise.create(:description => 'Seduto su una sedia estendi una gamba e porta avanti in busto verso la punta del piede. Mantieni la posizione per circa 10 secondi e cambia gamba. Materiali:sedia',
								 :difficulty => 'Easy', 
								 :name => 'Seated Hip Stretch',
								 :video_url => 'http://www.youtube.com/watch?v=scFP3T87PQE')
#@ = Exercise.create(:description => 'Materiali:sedia',
#								 :difficulty => 'Easy', 
#								 :name => '',
#								 :video_url => '')

#creazione training program
Program.delete_all
@TP1 = Program.create(:title => 'Equilibrio - Principiante',:description => 'Training per principianti che permette di prendere confidenza con il proprio equilibrio.')
@TP2 = Program.create(:title => 'Forza - Principiante',:description => 'Training per principianti che comincia ad allenare la forza.')
@TP3 = Program.create(:title => 'Riscaldamento - Principiante', :description => 'Training utile per riscaldarsi la muscolatura prima di un attivita fisica.')
@TP4 = Program.create(:title => 'Stretching - Principiante', :description => 'Training utile per allungare e riscaldare la muscolatura prima di un attivita fisica.')
@TP5 = Program.create(:title => 'Misto 1 - Principiante', :description => 'Training misto tra riscaldamento, forze e stretch')
@TP6 = Program.create(:title => 'Misto 2 - Principiante', :description => 'Training misto tra riscaldamento, forze e equilibrio')
#creazione lesson di un training
Lesson.delete_all
#lezione TP1
@lessonTP1_1 = @TP1.lessons.new(:title => 'lesson1')
@lessonTP1_1.save
@lessonTP1_2 = @TP1.lessons.new(:title => 'lesson2')
@lessonTP1_2.save
@lessonTP1_3 = @TP1.lessons.new(:title => 'lesson3')
@lessonTP1_3.save
#Lezioni TP2
@lessonTP2_1 = @TP2.lessons.new(:title => 'lesson1')
@lessonTP2_1.save
@lessonTP2_2 = @TP2.lessons.new(:title => 'lesson2')
@lessonTP2_2.save
@lessonTP2_3 = @TP2.lessons.new(:title => 'lesson3')
@lessonTP2_3.save
#Lezioni TP3
@lessonTP3_1 = @TP3.lessons.new(:title => 'lesson1')
@lessonTP3_1.save
@lessonTP3_2 = @TP3.lessons.new(:title => 'lesson2')
@lessonTP3_2.save
@lessonTP3_3 = @TP3.lessons.new(:title => 'lesson3')
@lessonTP3_3.save
#lezioni TP4
@lessonTP4_1 = @TP4.lessons.new(:title => 'lesson1')
@lessonTP4_1.save
@lessonTP4_2 = @TP4.lessons.new(:title => 'lesson2')
@lessonTP4_2.save
#lezioni TP5
@lessonTP5_1 = @TP5.lessons.new(:title => 'lesson1')
@lessonTP5_1.save
@lessonTP5_2 = @TP5.lessons.new(:title => 'lesson2')
@lessonTP5_2.save
@lessonTP5_3 = @TP5.lessons.new(:title => 'lesson3')
@lessonTP5_3.save
#lezioni TP6
@lessonTP6_1 = @TP6.lessons.new(:title => 'lesson1')
@lessonTP6_1.save
@lessonTP6_2 = @TP6.lessons.new(:title => 'lesson2')
@lessonTP6_2.save
@lessonTP6_3 = @TP6.lessons.new(:title => 'lesson3')
@lessonTP6_3.save

#creazione associationi
Association.delete_all
#associazioni lessonTP1_1
Association.create(:exercise_id => @full_tandem_stand.id,
			       :lesson_id => @lessonTP1_1.id, 
			       :repetitions => 'Fare 4 sessioni con una durata di 20 secondi.')
#associazioni lessonTP1_2
Association.create(:exercise_id => @hell_to_toe_walk.id,
				   :lesson_id => @lessonTP1_2.id, 
				   :repetitions => 'Fare 5 sessioni con una durata di 30 secondi.')
#associazioni lessonTP1_3
Association.create(:exercise_id => @one_leg_stand.id,
				   :lesson_id => @lessonTP1_3.id, 
				   :repetitions => "Fare 4 sessioni con durata di 15 secondi.")
#associazioni lessonTP2_1
Association.create(:exercise_id => @chair_stand.id,
				   :lesson_id => @lessonTP2_1.id, 
				   :repetitions => "Fare 3 sessioni con durata di 15 ripetizioni.")
Association.create(:exercise_id => @seated_hip_abduction.id,
				   :lesson_id => @lessonTP2_1.id, 
				   :repetitions => "Fare 3 sessioni per gamba con durata di 12 ripetizioni.")
Association.create(:exercise_id => @seated_hip_flexion.id,
				   :lesson_id => @lessonTP2_1.id, 
				   :repetitions => "Fare 3 sessioni per gamba con durata di 12 ripetizioni.")
#associazioni lessonTP2_2
Association.create(:exercise_id => @seated_leg_extension.id,
				   :lesson_id => @lessonTP2_2.id, 
				   :repetitions => "Fare 2 sessioni con durata di 9 ripetizioni per gamba.")
Association.create(:exercise_id => @standing_hell_lift.id,
				   :lesson_id => @lessonTP2_2.id, 
				   :repetitions => "Fare 2 sessioni con durata di 12 ripetizioni.")
Association.create(:exercise_id => @standing_leg_curl.id,
				   :lesson_id => @lessonTP2_2.id, 
				   :repetitions => "Fare 2 sessioni per gamba con durata di 12 ripetizioni.")
#associazioni lessonTP2_3
Association.create(:exercise_id => @seated_sit_ups.id,
				   :lesson_id => @lessonTP2_3.id, 
				   :repetitions => "Fare 2 sessioni con durata di 15 ripetizioni.")
Association.create(:exercise_id => @standing_toe_lift.id,
				   :lesson_id => @lessonTP2_3.id, 
				   :repetitions => "Fare 3 sessioni con durata di 10 ripetizioni.")
Association.create(:exercise_id => @seated_hip_adduction.id,
				   :lesson_id => @lessonTP2_3.id, 
				   :repetitions => "Fare 2 sessioni per gamba con durata di 12 ripetizioni.")
Association.create(:exercise_id => @seated_side_arms_with_resistence.id,
				   :lesson_id => @lessonTP2_3.id, 
				   :repetitions => "Fare 2 sessioni per gamba con durata di 12 ripetizioni.")
#associazioni lessonTP3_1
Association.create(:exercise_id => @arms_circles.id,
				   :lesson_id => @lessonTP3_1.id, 
				   :repetitions => "Fare 1 sessione con durata di 20 ripetizioni.")
Association.create(:exercise_id => @hip_abduction_and_adduction.id,
				   :lesson_id => @lessonTP3_1.id, 
				   :repetitions => "Fare 1 sessione con durata di 12 ripetizioni.")
#associazioni lessonTP3_2
Association.create(:exercise_id => @leg_raises.id,
				   :lesson_id => @lessonTP3_2.id, 
				   :repetitions => "Fare 1 sessione con durata di 15 ripetizioni.")
Association.create(:exercise_id => @pointer_foot_to_hell.id,
				   :lesson_id => @lessonTP3_2.id, 
				   :repetitions => "Fare 1 sessione per gamba con durata di 9 ripetizioni per gamba.")
#associazioni lessonTP3_3
Association.create(:exercise_id => @rest_head_lef_and_right.id,
				   :lesson_id => @lessonTP3_3.id, 
				   :repetitions => "Fare 1 sessione con durata di 12 ripetizioni.")
Association.create(:exercise_id => @shoulder_rotation.id,
				   :lesson_id => @lessonTP3_3.id, 
				   :repetitions => "Fare 1 sessione con durata di 15 ripetizioni.")
#associazioni lessonTP4_1
Association.create(:exercise_id => @seated_leg_stretch.id,
				   :lesson_id => @lessonTP4_1.id, 
				   :repetitions => "Fare 3 sessioni con durata di 10 secondi.")
#associazioni lessonTP4_2
Association.create(:exercise_id => @seated_hip_stretch.id,
				   :lesson_id => @lessonTP4_2.id, 
				   :repetitions => "Fare 3 sessioni con durata di 10 secondi.")
#associazioni lessonTP5_1
Association.create(:exercise_id => @arms_circles.id,
				   :lesson_id => @lessonTP5_1.id, 
				   :repetitions => "Fare 1 sessione con durata di 20 ripetizioni.")
Association.create(:exercise_id => @chair_stand.id,
				   :lesson_id => @lessonTP5_1.id, 
				   :repetitions => "Fare 3 sessioni con durata di 15 ripetizioni.")
Association.create(:exercise_id => @seated_leg_stretch.id,
				   :lesson_id => @lessonTP5_1.id, 
				   :repetitions => "Fare 3 sessioni con durata di 10 secondi.")
#associazioni lessonTP5_2
Association.create(:exercise_id => @pointer_foot_to_hell.id,
				   :lesson_id => @lessonTP5_2.id, 
				   :repetitions => "Fare 1 sessione con durata di 9 ripetizioni per gamba.")
Association.create(:exercise_id => @seated_hip_adduction.id,
				   :lesson_id => @lessonTP5_2.id, 
				   :repetitions => "Fare 2 sessioni con durata di 12 ripetizioni.")
Association.create(:exercise_id => @seated_hip_stretch.id,
				   :lesson_id => @lessonTP5_2.id, 
				   :repetitions => "Fare 3 sessioni con durata di 10 secondi.")
#associazioni lessonTP5_3
Association.create(:exercise_id => @rest_head_lef_and_right.id,
				   :lesson_id => @lessonTP5_3.id, 
				   :repetitions => "Fare 1 sessione con durata di 12 ripetizioni.")
Association.create(:exercise_id => @standing_leg_curl.id,
				   :lesson_id => @lessonTP5_3.id, 
				   :repetitions => "Fare 2 sessioni con durata di 12 ripetizioni per gamba.")
Association.create(:exercise_id => @seated_hip_stretch.id,
				   :lesson_id => @lessonTP5_3.id, 
				   :repetitions => "Fare 3 sessioni con durata di 10 secondi.")
#associazioni lessonTP6_1
Association.create(:exercise_id => @arms_circles.id,
				   :lesson_id => @lessonTP6_1.id, 
				   :repetitions => "Fare 1 sessione con durata di 20 ripetizioni.")
Association.create(:exercise_id => @full_tandem_stand.id,
				   :lesson_id => @lessonTP6_1.id, 
				   :repetitions => "Fare 4 sessioni con durata di 20 secondi.")
Association.create(:exercise_id => @seated_leg_extension.id,
				   :lesson_id => @lessonTP6_1.id, 
				   :repetitions => "Fare 2 sessioni con durata di 9 ripetizioni per gamba.")
#associazioni lessonTP6_2
Association.create(:exercise_id => @pointer_foot_to_hell.id,
				   :lesson_id => @lessonTP6_2.id, 
				   :repetitions => "Fare 1 sessione con durata di 9 ripetizioni per gamba.")
Association.create(:exercise_id => @hell_to_toe_walk.id,
				   :lesson_id => @lessonTP6_2.id, 
				   :repetitions => "Fare 5 sessioni con durata di 30 secondi.")
Association.create(:exercise_id => @standing_leg_curl.id,
				   :lesson_id => @lessonTP6_2.id, 
				   :repetitions => "Fare 2 sessioni con durata di 12 ripetizioni per gamba.")
#associazioni lessonTP6_3
Association.create(:exercise_id => @shoulder_rotation.id,
				   :lesson_id => @lessonTP6_3.id, 
				   :repetitions => "Fare 1 sessione con durata di 15 ripetizioni.")
Association.create(:exercise_id => @one_leg_stand.id,
				   :lesson_id => @lessonTP6_3.id, 
				   :repetitions => "Fare 4 sessioni con durata di 15 secondi.")
Association.create(:exercise_id => @standing_hell_lift.id,
				   :lesson_id => @lessonTP6_3.id, 
				   :repetitions => "Fare 2 sessioni con durata di 12 ripetizioni.")