class User < ApplicationRecord
	validates :fname, :sname, :email, presence: true
	validates :email, uniqueness: true
  has_secure_password
end
