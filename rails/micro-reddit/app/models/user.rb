class User < ApplicationRecord
  validates :username, presence: true, length: { in: 1..16 }
  has_many :posts
  has_many :comments
end
