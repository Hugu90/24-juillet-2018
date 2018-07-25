class DataBase < ApplicationRecord
	validates :name, :description, :presence => true 
	def full_name
		
	end
end
