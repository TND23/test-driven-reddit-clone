require 'spec_helper'

describe Comment do
  describe "associations" do
    it {should belong_to(:parent_comment)}
    it {should have_many(:sub_comments)}
    it {should belong_to(:link)}
  end
end
