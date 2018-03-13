class User < ApplicationRecord
  self.primary_key = 'user_name'
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :user_name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  has_attached_file :passport_image,styles: {large: "600x600>", medium: "450x300>", thumb: "100x100>" }
  validates_attachment_content_type :passport_image, content_type: /\Aimage\/.*\z/
  has_attached_file :aadhar_image,styles: {large: "600x600>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :aadhar_image, content_type: /\Aimage\/.*\z/
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create
  has_secure_password
end
