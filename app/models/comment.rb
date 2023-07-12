class Comment < ApplicationRecord
  belongs_to :post, touch: true
  belongs_to :user

  validates :post_id, presence: true 
  validates :user_id, presence: true 
  validates :body, presence: true 
end
