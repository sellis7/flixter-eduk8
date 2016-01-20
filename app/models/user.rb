class User < ActiveRecord::Base

  has_many :courses
  has_many :enrollments
  # Allows for a single searchable query to database through connected relationship
  has_many :enrolled_courses, :through => :enrollments, :source => :course

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def enrolled_in?(course)
    # enrolled_courses = []
    # enrollments.each do |enrollment|
    #   enrolled_courses << enrollment.course
    # end  - LONG WAY TO DO IT
    # enrolled_courses = enrollments.collect do |enrollment|
    #     enrollment.course
    # end  - REFACTORED WAY 1
    # enrolled_courses = enrollments.collect(&:course) - REFACTORED WAY 2 (N+1 Query)
    return enrolled_courses.include?(course)
  end

end
