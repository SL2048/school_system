class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :salary, :subject
  has_many :course_teachers
  has_many :courses , through: :course_teachers
end
