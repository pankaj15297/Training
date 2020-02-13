class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :post_comments, class_name: "Comment", foreign_key: "post_id", dependent: :destroy
  has_many :post_likes, class_name: "Like", foreign_key: "post_id", dependent: :destroy
end
