class User < ActiveRecord::Base
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :password, presence: true
  validates :password, confirmation: { case_sensitive: true }

  has_secure_password
  
end
