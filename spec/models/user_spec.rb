require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before :each do
      @user = User.new(first_name: 'Trevor', last_name: 'Thomas', email: 'thomastrevor1@gmail.com', password: 'stuffed', password_confirmation: 'stuffed')
    end

    it "creates a new user when they have a unique email and enter matching passwords" do
      @user.valid?
      puts @user.errors.full_messages
      expect(@user).to be_valid
    end
    it "doesn't work with non-matching passwords" do
      @user.password = 'things'
      @user.valid?
      puts @user.errors.full_messages
      expect(@user).to_not be_valid
    end
    it "won't work with too short of passwords" do
      @user.password = 'hi'
      @user.password_confirmation = 'hi'
      @user.valid?
      puts @user.errors.full_messages
      expect(@user).to_not be_valid
    end
  end
  describe '.authenticate_with_credentials' do
    before :each do
      @user = User.new(first_name: 'Trevor', last_name: 'Thomas', email: 'thomastrevor1@gmail.com', password: 'stuffed', password_confirmation: 'stuffed')
    end

    # examples for this class method here
  end
end
