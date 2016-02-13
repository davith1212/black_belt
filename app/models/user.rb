class User < ActiveRecord::Base
  has_secure_password

  validates :name, :email, :password, :password_confirmation, :presence => true, on: :create
  validates :password, length: { in: 8..20 }
end
