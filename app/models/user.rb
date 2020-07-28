class User < ActiveRecord::Base
  validates :email, :uniqueness => { :case_sensitive => false, message: "A user with that email already exists" }
  validates :password, presence: true, length: { in: 6..20 }
  validates :password, confirmation: { case_sensitive: true }
  validates :first_name, presence: true 
  validates :last_name, presence: true

  has_secure_password
  
end
