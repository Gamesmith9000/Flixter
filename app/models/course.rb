class Course < ApplicationRecord
  belongs_to :user
  has_many :sections

  mount_uploader :image, ImageUploader

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
# It seems like :image should also be validated (to exists, at least) since it is a required (?) field in our form in views/instructor/courses/new.html.erb

end
