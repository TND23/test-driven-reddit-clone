require 'spec_helper'

describe User do
  context "user doesn't have any credentials" do
    let(:incomplete_user) {User.new}

    it "validates user name existence" do
      expect(incomplete_user).to have(1).error_on(:user_name)
    end

    it "validates user password digest existence" do
      expect(incomplete_user).to have(1).error_on(:password_digest)
    end

    it "validates user session token existence" do
      expect(incomplete_user).to have(1).error_on(:session_token)
    end
  end

  context "user is created" do
    let(:complete_user) {FactoryGirl.build(:user)}
    p FactoryGirl.build(:user)
    it "has a user name" do
      expect(complete_user.user_name).should_not be_nil
    end

    it "should have a session token" do
      expect(complete_user.session_token).should_not be_nil
    end

    it "should have a password digest" do
      expect(complete_user.password_digest).should_not be_nil
    end

    it "is_password? method should return true for the correct password" do
      complete_user.password = "test"
      complete_user.is_password?('test').should be_true
    end

    it "is_password? method should return false for an incorrect password" do
      complete_user.password = "test"
      complete_user.is_password?('test1').should be_false
    end

    it "should have a reset_session_token that changes the token" do

      old_token = complete_user.session_token
      complete_user.reset_session_token!

      expect(old_token).should_not eq complete_user.session_token
      expect(complete_user.session_token).not_to be_nil
    end

    it "should not store a password" do
      expect(complete_user.password).to be_nil
    end
  end
end
