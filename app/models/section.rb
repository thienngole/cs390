class Section < ApplicationRecord
  belongs_to :course
  has_and_belongs_to_many :students

  validates :number, presence: true
end
