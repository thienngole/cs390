class Course < ApplicationRecord
	has_many :sections

	validates :name, presence: true
	validates :name, uniqueness: true
	validates :department, presence: true

	validates :credit_hours, numericality: { :less_than_or_equal_to => 4 }

	


	
end
