class Post < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, presence: true, length: { maximum: 250 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  after_save :update_posts_counter

  def most_recent_comments
    comments.order('created_at DESC').limit(5)
  end

  def update_posts_counter
    user.increment!(:posts_counter)
  end
end
