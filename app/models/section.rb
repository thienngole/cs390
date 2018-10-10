class Section < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :students

  validates :number, presence: true
  validates :semester, presence: true
  validates :room_number, presence: true
  
  validates_associated :course

end
