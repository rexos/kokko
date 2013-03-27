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
@full_tandem_stand_eye_closed = Exercise.create(:description => 'Tieniti con le mani ad una sedia e metti un piede, in fila, davanti all\'altro e mantieni l\'equilibrio per 15 secondi staccando le mani dalla sedie e distendendole in avanti e chiudendo gli occhi. Inverti la posizione dei piedi e ripeti. Materiali:sedia',
								 :difficulty => 'Hard', 
								 :name => 'Full Tandem Stand Eye Closed',
								 :video_url => 'http://www.youtube.com/watch?v=9kVgrLfDP1E')
@hell_to_toe_walk_eye_closed = Exercise.create(:description => 'Cammina in linea retta mettendo un piede in fila davanti all\'altro cercando di mantenere l\'equilibrio aiutandoti anche con le braccia tenendo gli occhi chiusi. procedi quindi a ritroso sullo stesso percorso sempre mantenendo i piedi in fila',
								 :difficulty => 'Hard', 
								 :name => 'Hell to Toe Walk Eye Closed',
								 :video_url => 'http://www.youtube.com/watch?v=_G95iuafFwo')
@one_leg_stand_eye_closed = Exercise.create(:description => 'Aiutandoti con una sedia, se necessario, alza la gamba destra all\'indietro fino a formare un angolo di novanta gradi con il ginocchio, chiudi gli occhi e lascia la presa della sedia. Mantieni la posizione di equilibrio per 15  secondi poi cambia gamba.',
								 :difficulty => 'Hard', 
								 :name => 'One Leg Stand Eye Closed',
								 :video_url => 'http://www.youtube.com/watch?v=c1H7uN3bzAI')
@full_tandem_stand_on_a_towel = Exercise.create(:description =>'Metti un piede, in fila, davanti all\'altro e mantieni l\'equilibrio sopra un asciugamano per 10 secondi staccando le mani dalla sedia e mantieni la posizione per 15 secondi. Inverti la posizione dei piedi e ripeti. Materiali: sedia, asciugamano', 
									 :difficulty => 'Medium', 
									 :name => 'Full Tandem Stand On A Towel', 
									 :video_url => 'http://www.youtube.com/watch?v=MDExj3gBADM')
@hell_to_toe_walk_forward_and_backward = Exercise.create(:description =>'Cammina in linea retta mettendo un piede in fila davanti all\'altro cercando di mantenere l\'equilibrio aiutandoti anche con le braccia. Ripeti quindi lo stesso percorso all\'indietro.', 
									 :difficulty => 'Medium', 
									 :name => 'Hell To Toe Walk Forward And Backward', 
									 :video_url => 'http://www.youtube.com/watch?v=_G95iuafFwo')
@chair_stand_arms_stretched_out = Exercise.create(:description =>'A braccia distese in avanti siediti e rialzati da una sedia. Materiale: sedia', 
									 :difficulty => 'Medium', 
									 :name => 'Chair Stand, arms stretched out', 
									 :video_url => 'http://www.youtube.com/watch?v=5XfjR7Fyiow')
@standing_hip_abduction = Exercise.create(:description =>'In piedi, aiutandoti con una sedia, allarga lateralmente una gamba. Cambia gamba e ripeti. Materiali: sedia', 
									 :difficulty => 'Medium', 
									 :name => 'Standing Hip Abduction', 
									 :video_url => 'http://www.youtube.com/watch?v=bDKxFQZfkt8')
@standing_hip_flexion = Exercise.create(:description =>'In piedi alza una gamba alla volta portando il ginocciho verso il petto. Materiali: sedia', 
									 :difficulty => 'Medium', 
									 :name => 'Standing Hip Flexion', 
									 :video_url => 'http://www.youtube.com/watch?v=SsNZ4TDvEOE')
@seated_leg_extension_with_weights = Exercise.create(:description =>'Seduto su una sedia, con dei pesi alle caviglie, estendi e fletti una gamba. Materiali: sedia, pesi per caviglie', 
									 :difficulty => 'Medium', 
									 :name => 'Seated leg extension, with weights', 
									 :video_url => 'http://www.youtube.com/watch?v=5TjwWvNDs4s')
@standing_hell_lift_with_weights = Exercise.create(:description =>'Usando una sedia come supporto e con dei pesi alle caviglie spingiti verso l\'alto appoggiandoti sulle punte. Materiali:  sedia, pesi per caviglie', 
									 :difficulty => 'Medium', 
									 :name => 'Standing Hell Extension, with weights', 
									 :video_url => 'http://www.youtube.com/watch?v=hbpFflr-dYY')
@standing_leg_curl_with_weights = Exercise.create(:description =>'Aiutandoti con una sedia, se necessario, alza la gamba destra all\'indietro fino a formare un angolo di novanta gradi con il ginocchio. Poi cambia gamba. Materiali: sedia, pesi per caviglie', 
									 :difficulty => 'Medium', 
									 :name => 'Standing leg Curl, with weights', 
									 :video_url => 'http://www.youtube.com/watch?v=hbpFflr-dYY')
@seated_sit_ups_arms_behind_head = Exercise.create(:description =>'Seduto sul bordo della sedia con le mani incrociate dietro la testa porta indietro la schiena fino a toccare lo schienale ma senza appoggiarti. Mantieni la posizione per qualche secondo e torna alla posizione di partenza. Materiali: sedia', 
									 :difficulty => 'Medium', 
									 :name => 'Seated sit ups, arms behind head', 
									 :video_url => 'http://www.youtube.com/watch?v=YEPWVwbsXnM')
@standing_toe_lift_with_weights = Exercise.create(:description =>'Seduto su una sedia, con dei pesi alle punte dei piedi, spingi le punte dei piedi verso l\'alto mantenendo i talloni a terra. Materiali: sedia, pesi', 
									 :difficulty => 'Medium', 
									 :name => 'Standing toe lift, with weights', 
									 :video_url => 'http://www.youtube.com/watch?v=7yjyVyNG8-I')
@seated_side_arms_raise_with_resistance_band = Exercise.create(:description =>'In piedi prendi una fascia elastica estendendo le braccia verso l\'esterno facendola passare sotto i piedi. alza le braccia verso l\'alto e l\'esterno portando la fascia elastica in estensione, mantieni la posizione per alcuni secondi e rilascia. Materiali: fascia elastica', 
									 :difficulty => 'Medium', 
									 :name => 'Standing toe lift, with weights', 
									 :video_url => 'http://www.youtube.com/watch?v=QfHDNaJbkSk')
@fast_chair_stand = Exercise.create(:description => 'A braccia incrociate siediti e rialzati da una sedia velocemente. Materiali:sedia',
								 :difficulty => 'Hard', 
								 :name => 'Fast Chair Stand',
								 :video_url => 'http://www.youtube.com/watch?v=h41x4orwHag')
@standing_hip_abduction_without_placing_the_foot_on_the_floor = Exercise.create(:description => 'Stando in piedi ed aiutandoti con una sedia per l\'equilibrio allarga lateralmente una gamba senza appoggiarla per terra. Materiali:sedia',
								 :difficulty => 'Hard', 
								 :name => 'Standing Hip Abduction Without Placing the Foot on the Floor',
								 :video_url => 'http://www.youtube.com/watch?v=N2pVdff79mk')
@standing_hip_flexion_without_placing_the_foot_on_the_floor = Exercise.create(:description => 'In piedi, aiutandoti con una sedia per l\'equilibrio, porta un ginocchio verso il petto senza appoggiarlo per terra.Materiali:sedia',
								 :difficulty => 'Hard', 
								 :name => 'Standing Hip Flexion Without Placing The Foot On The Floor',
								 :video_url => 'http://www.youtube.com/watch?v=vnspDV60FKU')
@standing_leg_extension_with_weights = Exercise.create(:description => 'Da in piedi, aiutandoti con una sediae con dei pesi alle caviglie, estendi e fletti una gamba senza appoggiarla per terra. Materiali:sedia,pesi per caviglie.',
								 :difficulty => 'Hard', 
								 :name => 'Standing Leg Extension With Weights',
								 :video_url => 'http://www.youtube.com/watch?v=8ebS6z8IWqc')
@one_leg_heel_lift_with_wights = Exercise.create(:description => 'Usando una sedia come supporto e con dei pesi alle caviglie spingiti verso l\'alto appoggiandoti sulla punta di un piede, quindi cambia gamba.Materiali:sedia,pesi per caviglie.',
								 :difficulty => 'Hard', 
								 :name => 'One Leg Heel Lift With Weights',
								 :video_url => 'http://www.youtube.com/watch?v=ZUHwHn0pWf8')
@seated_side_arms_with_resistance = Exercise.create(:description => 'In piedi prendi una fascia elastica estendendo le braccia verso l\'esterno facendola passare sotto i piedi. alza le braccia verso l\'alto e l\'esterno portando la fascia elastica in estensione, mantieni la posizione per alcuni secondi e rilascia. Materiali:fascia elastica',
								 :difficulty => 'Hard', 
								 :name => 'Seated Side Arms With Resistance',
								 :video_url => 'http://www.youtube.com/watch?v=koNiRcibFEk')
@seated_sit_ups_straight_arms_overhead = Exercise.create(:description => 'Seduto sul bordo della sedia, con le mani distese in avanti, porta indietro la schiena fino a toccare lo schienale ma senza appoggiarti e porta le braccia sempre tese verso l\'alto. Mantieni la posizione per qualche secondo e torna alla posizione di partenza. Materiali:sedia',
								 :difficulty => 'Hard', 
								 :name => 'Seated Sit Ups Straight Arms Overhead',
								 :video_url => 'http://www.youtube.com/watch?v=ZFutVkwSYps')
@standing_toe_lift_with_weights = Exercise.create(:description => 'In piedi, aiutandoti con una sedia per l\'equilibrio e con dei pesi sulle punte dei piedi, spingi le punte dei piedi verso l\'alto mantenendo i talloni a terra.Materiali:sedia',
								 :difficulty => 'Hard', 
								 :name => 'Standing Toe Lift With Weights',
								 :video_url => 'http://www.youtube.com/watch?v=4-JtqdfrcnA')
@standing_hip_adduction = Exercise.create(:description => 'In piedi, aiutandoti con una sedia, metti il pallone tra le cosce e cerca di comprimerlo il piu possibile per alcuni secondi per poi rilasciarlo senza farlo cadere. Materiali:sedia,palla per esercizi.',
								 :difficulty => 'Hard', 
								 :name => 'Standing Hip Adduction',
								 :video_url => 'http://www.youtube.com/watch?v=5xeYx4CeExw')
@standing_leg_stretch = Exercise.create(:description =>'In piedi estendi una gamba indietro porta l\'altra gamba piegandola in avanti. Aiutandoti con una sedia spingi in avanti tenendo i talloni a terra, mantieni la posizione per 15 secondi e cambia gamba. Materiali: sedia', 
									 :difficulty => 'Medium', 
									 :name => 'Standing Leg Stretch', 
									 :video_url => 'http://www.youtube.com/watch?v=MvoIoCexd7c')
@standing_arm_circles = Exercise.create(:description =>'In piedi fai roteare le braccia in maniera circolare all\'indietro', 
									 :difficulty => 'Medium', 
									 :name => 'Standing Arms Circles', 
									 :video_url => 'http://www.youtube.com/watch?v=G0LEnxCpN68')
@hip_abduction_and_adduction = Exercise.create(:description =>'Seduta su una sedia allarga lateralmente una gamba e poi l\'altra. Materiali: sedia', 
									 :difficulty => 'Medium', 
									 :name => 'Hip Abduction and Adduction', 
									 :video_url => 'http://www.youtube.com/watch?v=QUbaotseOQ4')
#@ = Exercise.create(:description => 'Materiali:sedia',
#								 :difficulty => 'Hard', 
#								 :name => '',
#								 :video_url => '')
#creazione training program
Program.delete_all
@TP1 = Program.create(:title => 'Equilibrio - Principiante',:description => 'Training per principianti che permette di prendere confidenza con il proprio equilibrio.', :difficulty => 'Principiante' )
@TP2 = Program.create(:title => 'Forza - Principiante',:description => 'Training per principianti che comincia ad allenare la forza.', :difficulty => 'Principiante')
@TP3 = Program.create(:title => 'Riscaldamento - Principiante', :description => 'Training utile per riscaldarsi la muscolatura prima di un attivita fisica.', :difficulty => 'Principiante')
@TP4 = Program.create(:title => 'Stretching - Principiante', :description => 'Training utile per allungare e riscaldare la muscolatura prima di un attivita fisica.',:difficulty => 'Principiante')
@TP5 = Program.create(:title => 'Misto 1 - Principiante', :description => 'Training misto tra riscaldamento, forze e stretch',:difficulty => 'Principiante')
@TP6 = Program.create(:title => 'Misto 2 - Principiante', :description => 'Training misto tra riscaldamento, forze e equilibrio',:difficulty => 'Principiante')
#training program intermedio
@TPI1 = Program.create(:title => 'Equilibrio - Intermedio',:description => 'Training che permette di prendere confidenza con il proprio equilibrio.',:difficulty => 'Intermedio')
@TPI2 = Program.create(:title => 'Forza - Intermedio',:description => 'Training focalizzato ad allenare la forza.',:difficulty => 'Intermedio')
@TPI3 = Program.create(:title => 'Stretching - Intermedio',:description => 'Training utile per allungare e riscaldare la muscolatura prima di un attivita fisica.', :difficulty => 'Intermedio')
@TPI4 = Program.create(:title => 'Riscaldamento - Intermedio',:description => 'Training utile per riscaldarsi la muscolatura prima di un attivita fisica.', :difficulty => 'Intermedio')
#training program avanzati
@TPA1 = Program.create(:title => 'Equilibrio - Avanzato', :description => 'Training che permette di aumentare e allenare il proprio equilibrio.',:difficulty => 'Avanzato')
@TPA2 = Program.create(:title => 'Forza - Avanzato', :description => 'Training che permette di aumentare e allenare la propria forza.',:difficulty => 'Avanzato')
@TPA3 = Program.create(:title => 'Misto - Avanzato',:description => 'Training misto tra equilibrio e forza', :difficulty => 'Avanzato')
#creazione lesson di un training
Lesson.delete_all
#lezioni programmi principiante
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

#lezioni programmi intermedi
#Lezione TPI1_1
@lessonTPI1_1 = @TPI1.lessons.new(:title => 'Lezione 1')
@lessonTPI1_1.save
#Lezione TPI1_1
@lessonTPI1_2 = @TPI1.lessons.new(:title => 'Lezione 2')
@lessonTPI1_2.save
#Lezione TPI2_1
@lessonTPI2_1 = @TPI2.lessons.new(:title => 'Lezione 1')
@lessonTPI2_1.save
#Lezione TPI2_2
@lessonTPI2_2 = @TPI2.lessons.new(:title => 'Lezione 2')
@lessonTPI2_2.save
#Lezione TPI2_3
@lessonTPI2_3 = @TPI2.lessons.new(:title => 'Lezione 3')
@lessonTPI2_3.save
#Lezione TPI3_1
@lessonTPI3_1 = @TPI3.lessons.new(:title => 'Lezione 1')
@lessonTPI3_1.save
#Lezione TPI3_2
@lessonTPI3_2 = @TPI3.lessons.new(:title => 'Lezione 2')
@lessonTPI3_2.save
#Lezione TPI4_1
@lessonTPI4_1 = @TPI4.lessons.new(:title => 'Lezione 1')
@lessonTPI4_1.save
#Lezione TPI4_2
@lessonTPI4_2 = @TPI4.lessons.new(:title => 'Lezione 2')
@lessonTPI4_2.save
#Lezione TPI4_3
@lessonTPI4_3 = @TPI4.lessons.new(:title => 'Lezione 3')
@lessonTPI4_3.save

#lezioni programmi avanzati
#lezioni TPA1
@lessonTPA1_1 = @TPA1.lessons.new(:title => 'lesson1')
@lessonTPA1_1.save
@lessonTPA1_2 = @TPA1.lessons.new(:title => 'lesson2')
@lessonTPA1_2.save
@lessonTPA1_3 = @TPA1.lessons.new(:title => 'lesson3')
@lessonTPA1_3.save
#lezioni TPA2
@lessonTPA2_1 = @TPA2.lessons.new(:title => 'lesson1')
@lessonTPA2_1.save
@lessonTPA2_2 = @TPA2.lessons.new(:title => 'lesson2')
@lessonTPA2_2.save
@lessonTPA2_3 = @TPA2.lessons.new(:title => 'lesson3')
@lessonTPA2_3.save
#Lezione TPA3
@lessonTPA3_1 = @TPA3.lessons.new(:title => 'Lezione 1')
@lessonTPA3_1.save
@lessonTPA3_2 = @TPA3.lessons.new(:title => 'Lezione 2')
@lessonTPA3_2.save
@lessonTPA3_3 = @TPA3.lessons.new(:title => 'Lezione 3')
@lessonTPA3_3.save
Association.delete_all
#associationi programmi principianti
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

#associazioni training program intermedi
#Associazione TPI1_1
Association.create(:exercise_id => @full_tandem_stand_on_a_towel.id,
			       :lesson_id => @lessonTPI1_1.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 15 secondi.')
#Associazione TPI1_2
Association.create(:exercise_id => @hell_to_toe_walk_forward_and_backward.id,
			       :lesson_id => @lessonTPI1_2.id, 
			       :repetitions => 'Fare 5 sessioni con una durata di 30 secondi.')
#Associazione TPI2_1
Association.create(:exercise_id => @chair_stand_arms_stretched_out.id,
			       :lesson_id => @lessonTPI2_1.id, 
			       :repetitions => 'Fare 2 sessioni con una durata di 12 ripetizioni.')
Association.create(:exercise_id => @standing_hip_abduction.id,
			       :lesson_id => @lessonTPI2_1.id, 
			       :repetitions => 'Fare 3 sessioni (per gamba) con una durata di 12 ripetizioni.')
Association.create(:exercise_id => @standing_hip_flexion.id,
			       :lesson_id => @lessonTPI2_1.id, 
			       :repetitions => 'Fare 3 sessioni (per gamba) con una durata di 12 ripetizioni.')
#Associazione TPI2_2
Association.create(:exercise_id => @seated_leg_extension_with_weights.id,
			       :lesson_id => @lessonTPI2_2.id, 
			       :repetitions => 'Fare 3 sessioni (per gamba) con una durata di 12 ripetizioni.')
Association.create(:exercise_id => @standing_hell_lift_with_weights.id,
			       :lesson_id => @lessonTPI2_2.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 12 ripetizioni.')
Association.create(:exercise_id => @standing_leg_curl_with_weights.id,
			       :lesson_id => @lessonTPI2_2.id, 
			       :repetitions => 'Fare 3 sessioni (per gamba) con una durata di 12 ripetizioni.')
#Associazione TPI2_3
Association.create(:exercise_id => @seated_sit_ups_arms_behind_head.id,
			       :lesson_id => @lessonTPI2_3.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 12 ripetizioni.')
Association.create(:exercise_id => @standing_toe_lift_with_weights.id,
			       :lesson_id => @lessonTPI2_3.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 12 ripetizioni.')
Association.create(:exercise_id => @seated_hip_adduction.id,
			       :lesson_id => @lessonTPI2_3.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 12 ripetizioni.')
Association.create(:exercise_id => @seated_side_arms_raise_with_resistance_band.id,
			       :lesson_id => @lessonTPI2_3.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 12 ripetizioni.')
#Associazione TPI3_1-1
Association.create(:exercise_id => @standing_leg_stretch.id,
			       :lesson_id => @lessonTPI3_1.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 15 secondi.')
#Associazione TPI3_2-1
Association.create(:exercise_id => @seated_hip_stretch.id,
			       :lesson_id => @lessonTPI3_2.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 15 secondi.')
#Associazione TPI4_1-1
Association.create(:exercise_id => @standing_arm_circles.id,
			       :lesson_id => @lessonTPI4_1.id, 
			       :repetitions => 'Fare 1 sessione con una durata di 10 ripetizioni.')
#Associazione TPI4_1-2
Association.create(:exercise_id => @hip_abduction_and_adduction.id,
			       :lesson_id => @lessonTPI4_1.id, 
			       :repetitions => 'Fare 1 sessione con una durata di 12 ripetizioni.')
#Associazione TPI4_2-1
Association.create(:exercise_id => @leg_raises.id,
			       :lesson_id => @lessonTPI4_2.id, 
			       :repetitions => 'Fare 1 sessione con una durata di 15 ripetizioni.')
#Associazione TPI4_2-2
Association.create(:exercise_id => @pointer_foot_to_hell.id,
			       :lesson_id => @lessonTPI4_2.id, 
			       :repetitions => 'Fare 9 ripetizioni (per gamba).')
#Associazione TPI4_3-1
Association.create(:exercise_id => @rest_head_lef_and_right.id,
			       :lesson_id => @lessonTPI4_3.id, 
			       :repetitions => 'Fare 1 sessione con una durata di 12 ripetizioni.')
#Associazione TPI4_3-2
Association.create(:exercise_id => @shoulder_rotation.id,
			       :lesson_id => @lessonTPI4_3.id, 
			       :repetitions => 'Fare 1 sessione con una durata di 15 ripetizioni.')

#associazioni training program avanzati
#associazioni lesson TPA1_1
Association.create(:exercise_id => @full_tandem_stand_eye_closed.id,
				   :lesson_id => @lessonTPA1_1.id, 
				   :repetitions => "Fare 3 sessioni con durata di 15 secondi.")
#associazioni lesson TPA1_2
Association.create(:exercise_id => @hell_to_toe_walk_eye_closed.id,
				   :lesson_id => @lessonTPA1_2.id, 
				   :repetitions => "Fare 3 sessioni con durata di 30 secondi.")
#associazioni lesson TPA1_3
Association.create(:exercise_id => @one_leg_stand_eye_closed.id,
				   :lesson_id => @lessonTPA1_3.id, 
				   :repetitions => "Fare 4 sessioni con durata di 15 secondi.")
#associazioni lesson TPA2_1
Association.create(:exercise_id => @fast_chair_stand.id,
				   :lesson_id => @lessonTPA2_1.id, 
				   :repetitions => "Fare 3 sessioni con durata di 11 ripetizioni.")
Association.create(:exercise_id => @standing_hip_abduction_without_placing_the_foot_on_the_floor.id,
				   :lesson_id => @lessonTPA2_1.id,
				   :repetitions => "Fare 3 sessioni per gambacon durata di 12 ripetizioni.")
Association.create(:exercise_id => @standing_hip_flexion_without_placing_the_foot_on_the_floor.id,
				   :lesson_id => @lessonTPA2_1.id,
				   :repetitions => "Fare 3 sessioni per gamba con durata di 12 ripetizioni.")
#associazioni lesson TPA2_2
Association.create(:exercise_id => @standing_leg_extension_with_weights.id,
				   :lesson_id => @lessonTPA2_2.id,
				   :repetitions => "Fare 3 sessioni con durata di 10 ripetizioni per gamba.")
Association.create(:exercise_id => @one_leg_heel_lift_with_wights.id,
				   :lesson_id => @lessonTPA2_2.id,
				   :repetitions => "Fare 3 sessioni con durata di 12 ripetizioni.")
Association.create(:exercise_id => @seated_side_arms_with_resistence.id,
				   :lesson_id => @lessonTPA2_2.id,
				   :repetitions => "Fare 3 sessioni con durata di 15 ripetizioni.")
#associazioni lesson TPA2_3
Association.create(:exercise_id => @seated_sit_ups_straight_arms_overhead.id,
				   :lesson_id => @lessonTPA2_3.id, 
				   :repetitions => "Fare 3 sessioni con durata di 12 ripetizioni.")
Association.create(:exercise_id => @standing_toe_lift_with_weights.id,
				   :lesson_id => @lessonTPA2_3.id, 
				   :repetitions => "Fare 3 sessioni con durata di 10 ripetizioni.")
Association.create(:exercise_id => @standing_hip_adduction.id,
				   :lesson_id => @lessonTPA2_3.id, 
				   :repetitions => "Fare 3 sessioni con durata di 12 ripetizioni.")
#Associazioni TPA3_1-1
Association.create(:exercise_id => @full_tandem_stand_eye_closed.id,
			       :lesson_id => @lessonTPA3_1.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 15 secondi.')
#Associazioni TPA3_1-2
Association.create(:exercise_id => @fast_chair_stand.id,
			       :lesson_id => @lessonTPA3_1.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 11 ripetizioni.')
#Associazioni TPA3_1-3
Association.create(:exercise_id => @standing_hip_abduction_without_placing_the_foot_on_the_floor.id,
			       :lesson_id => @lessonTPA3_1.id, 
			       :repetitions => 'Fare 3 sessioni (per gamba) con una durata di 12 ripetizioni.')
#Associazioni TPA3_2-1
Association.create(:exercise_id => @hell_to_toe_walk_eye_closed.id,
			       :lesson_id => @lessonTPA3_2.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 30 secondi.')
#Associazioni TPA3_2-2
Association.create(:exercise_id => @standing_leg_extension_with_weights.id,
			       :lesson_id => @lessonTPA3_2.id, 
			       :repetitions => 'Fare 3 (per gamba) sessioni con una durata di 10 ripetizioni.')
#Associazioni TPA3_2-3
Association.create(:exercise_id => @one_leg_heel_lift_with_wights.id,
			       :lesson_id => @lessonTPA3_2.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 12 ripetizioni.')
#Associazioni TPA3_3-1
Association.create(:exercise_id => @one_leg_stand_eye_closed.id,
			       :lesson_id => @lessonTPA3_3.id, 
			       :repetitions => 'Fare 4 sessioni con una durata di 15 secondi.')
#Associazioni TPA3_3-2
Association.create(:exercise_id => @standing_toe_lift_with_weights.id,
			       :lesson_id => @lessonTPA3_3.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 10 ripetizioni.')
#Associazioni TPA3_3-3
Association.create(:exercise_id => @standing_hip_adduction.id,
			       :lesson_id => @lessonTPA3_3.id, 
			       :repetitions => 'Fare 3 sessioni con una durata di 12 ripetizioni.')