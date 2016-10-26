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

  it "should have the field 'homepage'" do
	visit "/authors/new"
    expect(page).to have_field("Homepage")
  end

  it "should have the button 'create author'" do
	visit "/authors/new"
    expect(page).to have_button("Create Author")
  end

  it "should build an author" do
  visit "/authors/new"
    expect(build(:author)).to be_a Author
  end

  it "should save a new author to the data base." do
    visit "/authors/new" 
    @author = build(:author)
    fill_in "First name", with: @author.first_name
    fill_in "Last name", with: @author.last_name
    fill_in "Homepage", with: @author.homepage
    click_button "Create Author"
    expect(Author.find_by(
      first_name: @author.first_name, 
      last_name: @author.last_name, 
      homepage: @author.homepage)
    ).not_to be_nil
  end
end