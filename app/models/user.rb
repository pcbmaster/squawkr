class User < ApplicationRecord

  has_one :bio
  has_many :posts
  has_many :commments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
