require 'spec_helper'

describe "StaticPages" do
  
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staic_pages/home'
      expect(page).to have_content('Sample App')
      end

    it "should have the right title" do
    	visit '/staic_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end


  describe "Help page" do
	
	it "should have the content 'Help'" do
		visit '/staic_pages/help'
		expect(page).to have_content('Help')
	end

    it "should have the right title" do
    	visit '/staic_pages/help'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

    describe "About page" do

    	it "should have the content 'About Us" do
    		visit '/staic_pages/about'
    		expect(page).to have_content('About Us')
    	end

    it "should have the right title" do
    	visit '/staic_pages/about'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
    end
    end
end
