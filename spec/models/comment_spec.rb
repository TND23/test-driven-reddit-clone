require 'spec_helper'

describe Comment do
  describe "associations" do
    it {should belong_to(:comments)}
    it {should have_many(:comments)}
  end
end
