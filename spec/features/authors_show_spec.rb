require 'rails_helper'

describe "Author's page", :type => :feature do
  
  before(:context) do
    @author = build(:author)
    @author.save
  end

  it "should have the text 'first name'" do
	visit "/authors/" + @author.id.to_s
    expect(page).to have_text("First name: " + @author.first_name )
  end

end