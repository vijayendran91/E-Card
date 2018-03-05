class User < ApplicationRecord
  self.primary_key = 'user_name'
  has_secure_password
end
