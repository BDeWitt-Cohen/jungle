require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do

    before :each do
      @user = User.new(:first_name 'Trevor', :last_name 'Thomas', :email 'thomastrevor1@gmail.com', :password 'stuff', :password_confirmation 'stuff')

    end

    it "creates a new user when they have a unique email and enter matching passwords" do
      @user.valid?
      puts @user.errors.full_messages
      expect(@product).to_not be_valid
    end
  end
end
