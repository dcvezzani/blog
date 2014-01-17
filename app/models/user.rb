class User < ActiveRecord::Base
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :username, presence: true
	validates :password, presence: true

	def name
		"#{firstname} #{lastname}"
	end

end
