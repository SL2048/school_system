class UsersExportWorker
  include Sidekiq::Worker
  require 'csv'
  
  def perform(*args)
    @students = Student.all
    @teachers = Teacher.all

    file = 'all_users.csv'
    header = 'name, type'

    CSV.open(file, 'w') do |csv|
      csv << header

      @students.each do |s|
        csv << [s.name, 'student']
      end

      @teachers.each do |t|
        csv << [t.name, 'teacher']
      end

    end

  end
end
