require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    before { visit root_path }
    subject {page}
    it {should have_content 'Sample App' }
    it {should have_content 'Ruby on Rails Tutorial' }
    it {should_not have_content '| Home' }

  end

    describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/contact'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end
