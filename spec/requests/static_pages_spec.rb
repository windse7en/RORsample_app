require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/staic_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/staic_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/staic_pages/home'
      expect(page).not_to have_title('Home')
    end

  end

end
