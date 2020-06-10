class User < ApplicationRecord
  has_many :courses
  has_many :enrollments
  has_many :enrolled_courses, through: :enrollments, source: :course

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  def enrolled_in?(course)   
    return enrolled_courses.include?(course)
  end
end
