class User < ActiveRecord::Base
  validates :email, :uniqueness => { :case_sensitive => false, message: "A user with that email already exists" }
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }
  validates :first_name presence: true 
  validates :last_name presence: true

  has_secure_password
  
end
