class TeacherSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :salary, :subject
end
