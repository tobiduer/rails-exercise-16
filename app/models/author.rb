class Author < ActiveRecord::Base 
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :homepage, presence: true

	def name
		first_name + ' ' + last_name
	end

end