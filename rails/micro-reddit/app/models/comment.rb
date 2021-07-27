class Comment < ApplicationRecord
  validates :user_id, presence: true, length: { in: 1..100 }
  belongs_to :user
  belongs_to :post
end
