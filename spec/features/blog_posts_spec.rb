require 'spec_helper'

describe "tasks" do
  describe "GET /tasks" do
    it "displays the titles of existing blog posts" do
    	@post1 = Post.create(title: "First blog post", body: "This is my first blog post")
    	@post2 = Post.create(title: "Second entry", body: "This is my second entry")
    	@post3 = Post.create(title: "A third one", body: "The third blog entry")

    	visit posts_path
    	expect(page).to have_content('First blog post')
    	expect(page).to have_content('Second entry')
    	expect(page).to have_content('A third one')
    end
  end
  
  describe "GET /tasks/new" do
  	it "creates a new task" do
  		visit new_post_path
  		fill_in 'Title', with: "A fourth entry"
  		fill_in 'Body', with: "This is my fourth entry"
  		click_button 'Submit entry'

  		expect(current_path).to eq(posts_path)
  		expect(page).to have_content('A fourth entry')
  		save_and_open_page
  	end
  end
end
