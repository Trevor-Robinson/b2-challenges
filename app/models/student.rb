class Student < ApplicationRecord
  has_many :student_professors
  has_many :professors, through: :student_professors

  def self.average_age
    average(:age).to_i
  end
end
