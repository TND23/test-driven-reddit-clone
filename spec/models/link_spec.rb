require 'spec_helper'

describe Link do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "associations" do
    it { should belong_to(:user) }
    it { should have_many(:link_subs) }
    it { should have_many(:subs) }
  end




  let(:test_link) {FactoryGirl.create(:link)}

  it "has correct attributes" do
    expect(test_link.user_id).to_not be_nil
    expect(test_link.title).to_not be_nil
    expect(test_link.url).to_not be_nil
    expect(test_link.link_sub_id).to_not be_nil
  end


end
