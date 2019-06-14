class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :dateOfBirth, :address
  has_many :course_students
  has_many :courses, through: :course_students
end
