require 'rails_helper'

RSpec.describe Author, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "is valid" do
    # Using the shortened version of FactoryGirl syntax.
    # Add:  "config.include FactoryGirl::Syntax::Methods" (no quotes) to your spec_helper.rb
    expect(build(:author)).to be_valid
  end

  it "has a name" do
    # Using the shortened version of FactoryGirl syntax.
    # Add:  "config.include FactoryGirl::Syntax::Methods" (no quotes) to your spec_helper.rb
    expect(build(:author)).to respond_to(:name)
  end

  it "has a correct name" do
    # Using the shortened version of FactoryGirl syntax.
    # Add:  "config.include FactoryGirl::Syntax::Methods" (no quotes) to your spec_helper.rb
    expect(build(:author).name).to eq("Alan Turing")
  end
end
