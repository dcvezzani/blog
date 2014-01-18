class User < ActiveRecord::Base
	validates :firstname, presence: true,
												format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters"}
	validates :lastname, presence: true,
											  format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters"}
	validates :username, presence: true
	validates :password, presence: true,
											 length: { in: 6..20 }

	def name
		"#{firstname} #{lastname}"
	end

end
