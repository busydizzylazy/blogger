class Post < ApplicationRecord
  before_create :user
  belongs_to :user
  
  has_rich_text :content
  
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 200 }
  validates :content, presence: true
  
  
end
