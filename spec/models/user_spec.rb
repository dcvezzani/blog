require 'spec_helper'

# firstname:string
# lastname:string
# username:string
# password:string

describe User do
	it "is valid with a first name, last name, username, and password" do
		user = User.new(firstname: 'Mike',
										lastname: 'Vezzani',
										username: 'mjvezzani',
										password: 'foobar')
		expect(user).to be_valid
	end

	it "is invalid without a first name" do
		expect(User.new(firstname: nil)).to have(2).errors_on(:firstname)
	end

	it "does not accept numbers or symbols as part of first name" do
		expect(User.new(firstname: "mike1")).to have(1).errors_on(:firstname)
	end

	it "is invalid without a last name" do
		expect(User.new(lastname: nil)).to have(2).errors_on(:lastname)
	end

	it "does not accept numbers or symbols as part of last name" do
		expect(User.new(lastname: "Vezz@ni")).to have(1).errors_on(:lastname)
	end

	it "displays first name and last name correctly" do
		user = User.new(firstname: 'Mike',
										lastname: 'Vezzani')
		expect(user.name).to eq('Mike Vezzani')
	end
	
	it "is invalid without a username" do
		expect(User.new(username: nil)).to have(1).errors_on(:username)
	end
	
	it "is invalid without a password" do
		expect(User.new(password: nil)).to have(2).errors_on(:password)
	end

	it "is invalid with a password that is too short" do
		expect(User.new(password: "aaa")).to have(1).errors_on(:password)
	end

	it "is invalid with a password that is too long" do
		expect(User.new(password: "a" * 21)).to have(1).errors_on(:password)
	end
end