class Category < ApplicationRecord
  has_many :category_posts, class_name: "Post", foreign_key: "category_id", dependent: :destroy
  
  has_many :post_user_category, through: :category_posts, source: :user
end
