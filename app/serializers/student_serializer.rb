class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :dateOfBirth, :address
end
