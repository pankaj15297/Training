class Category < ApplicationRecord
  has_many :posts, class_name: "Post", foreign_key: "category_id", dependent: :destroy
end
