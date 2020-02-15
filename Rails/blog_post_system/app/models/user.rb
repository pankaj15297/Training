class User < ApplicationRecord
  has_many :user_posts, -> { order('title asc') }, class_name: "Post", foreign_key: "user_id", dependent: :destroy
  has_many :user_likes, class_name: "Like", foreign_key: "user_id", dependent: :destroy
  has_many :liked_posts, through: :user_likes, source: :post
  has_many :user_comments, class_name: "Comment", foreign_key: "user_id", dependent: :destroy
  has_many :commented_posts, through: :user_comments, source: :post
  has_many :user_pictures, as: :imageable, class_name: "Picture", foreign_key: "imageable_id"

  validates :name, presence: true



#   after_create :fun

# def fun
#   puts "Hello"
# end
end

