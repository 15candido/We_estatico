class User < ApplicationRecord

  validates :nome, presence: true
  validates :email, presence: true

  has_secure_password
end
