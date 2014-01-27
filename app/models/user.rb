class User < ActiveRecord::Base
  attr_accessible :crypted_password, :email, :salt

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
