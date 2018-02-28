class User < ApplicationRecord

  validates :user_name,:fname, :lname, :email, presence: true
  has_secure_password
end
