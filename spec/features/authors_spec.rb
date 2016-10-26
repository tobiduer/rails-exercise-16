require 'rails_helper'

describe "Authors page", :type => :feature do
  
  it "should render" do
	visit "/authors/"
    expect(page).to have_text("Authors")
  end

end