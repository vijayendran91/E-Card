class User < ApplicationRecord
  validates :fname, :lname, :email, presence: true
  has_secure_password
end
