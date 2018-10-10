class Student < ApplicationRecord
	has_and_belongs_to_many :sections

	validates :name, presence: true
	validates :name, uniqueness: true

	validates :student_id, presence: true
	validates :student_id, uniqueness: true

	validates :student_id, length: { maximum: 9 }

	

end
