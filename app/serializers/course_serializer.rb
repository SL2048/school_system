class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :code
end
