class StudentProfessorsController < ApplicationController
  def destroy
    #just need to instantiate for the method, can be a poro
    professor = StudentProfessor.first
    #don't like this, would rather not hardcode order of params. But good enough for now.
    #Look into keyword arguments for extra special bonus points.
    student = professor.unenroll_find(params["student_id"], params["id"])
    student.destroy_all
    redirect_to "/professors/#{params["id"]}"
  end
end
