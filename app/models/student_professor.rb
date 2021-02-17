class StudentProfessor < ApplicationRecord
  belongs_to :student
  belongs_to :professor

  def unenroll_find(student_id, professor_id)
    StudentProfessor.where(student_id: student_id, professor_id: professor_id)
  end
end
