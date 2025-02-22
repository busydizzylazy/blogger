class Post < ApplicationRecord
  before_create :user
  belongs_to :user
  acts_as_commontable
  has_many :comments, as: :commentable
  
  
  acts_as_taggable_on :tags
  
  has_rich_text :content
  
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 200 }
  validates :content, presence: true
  
  
end
