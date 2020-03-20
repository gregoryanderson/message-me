class User < ApplicationRecord
  validates :username, presence: true, length: {minimum: 3, maximum: 25}, 
            uniqueness: { case_sensitive: false }
  has_many :messages
  # before_save {self.email = email.downcase }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, 
  # uniqueness: { case_sensitive: false }, 
  # length: { maximum: 105 },
  # format: { with: VALID_EMAIL_REGEX }
  has_secure_password

end
