class User < ApplicationRecord

validates :name, presence: true
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
validates :phone_number, presence: true, numericality: true
validates :password, presence: true, length: { minimum: 8 }

end
