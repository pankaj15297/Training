class User < ApplicationRecord
  has_many :posts, class_name: "Post", foreign_key: "user_id", dependent: :destroy
  has_many :user_likes, class_name: "Like", foreign_key: "user_id", dependent: :destroy
  has_many :user_comments, class_name: "Comment", foreign_key: "user_id", dependent: :destroy
end
