module ProgramsHelper

  def get_progress_of_program(prog_id)
    progress = 0
    total = 0
    ex_done = 0
    program = Program.find(prog_id)
    program.lessons.each do |lesson|
      total += lesson.associations.count
    end
    current_user.statuses.each do |s|
      association = Association.find(s.association_id)
      new_prog_id = Lesson.find(association.lesson_id).program_id
      if new_prog_id == program.id
        ex_done += 1
      end
    end
    progress = ((ex_done.to_f/total.to_f)*100).to_d
  end


  def get_progress_of_lesson(lesson_id)
    lesson = Lesson.find(lesson_id)
    user_associations = Array.new
    current_user.statuses.each do |s|
      user_associations.push(s.association_id)
    end
    lesson_associations = Array.new
    lesson.associations.each do |a|
      lesson_associations.push(a.id)
    end
    total = (user_associations & lesson_associations)
    (BigDecimal((lesson_associations & user_associations).count.to_s) / BigDecimal(lesson_associations.count.to_s))*100
  end

end
