require 'rails_helper'

describe "Authors new page", :type => :feature do
  
  it "should have the field 'first name'" do
	visit "/authors/new"
    expect(page).to have_field("First name")
  end

  it "should have the field 'last name'" do
	visit "/authors/new"
    expect(page).to have_field("Last name")
  end

end