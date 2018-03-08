class User < ApplicationRecord
  self.primary_key = 'user_name'
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :user_name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create
  has_secure_password
end
