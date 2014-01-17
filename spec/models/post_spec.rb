require 'spec_helper'

describe Post do
	it "is invalid without title" do
		expect(Post.new(title: nil)).to have(1).errors_on(:title)
	end
	
	it "is invalid without body" do
		expect(Post.new(body:nil)).to have(1).errors_on(:body)
	end
end