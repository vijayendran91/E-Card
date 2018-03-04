class User < ApplicationRecord
  validates :user_name,:fname, :lname, :email, presence: true
end
