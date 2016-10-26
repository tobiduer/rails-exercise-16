require 'rails_helper'

describe "Authors index page", :type => :feature do
  
  before(:context) do
    @author = build(:author)
    @author.save
  end

  it "should render" do
	visit "/authors/"
    expect(page).to have_text("Authors")
  end

  it "should list name and homepage of all authors" do
	visit "/authors/"
    expect(page).to have_text(@author.name)
    expect(page).to have_text(@author.homepage)
  end
end