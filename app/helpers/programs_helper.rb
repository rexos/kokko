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
    progress = ((ex_done.to_f/total.to_f)*100).to_i
  end

end
