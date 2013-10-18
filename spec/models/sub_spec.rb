require 'spec_helper'

describe Sub do
  # sub has name and moderator

  describe "associations" do
    it { should belong_to(:moderator) }
    it { should have_many(:links) }
  end

  let(:test_sub) {FactoryGirl.create(:sub)}
  it "should have a name and moderator" do
    expect(test_sub.name).to_not be_nil
    expect(test_sub.moderator_id).to_not be_nil
  end

  it "should allow a link" do
    old_count = test_sub.links.count

    test_sub.links.create(url: 'http:test.com', title: "broken link")
    expect(test_sub.links.count).to eq (old_count + 1)
  end

  #generate user1
  #generate a sub making the mod user1
  #generate user2
  #if user1 = mod_id
  #current_user == mod_id


end
