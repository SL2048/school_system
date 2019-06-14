class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :code
  has_many :course_students
  has_many :students, through: :course_students

  has_many :course_teachers
  has_many :teachers, through: :course_teachers
end
