class User < ApplicationRecord
  has_many :posts, class_name: "Post", foreign_key: "user_id", dependent: :destroy
  has_many :likes, class_name: "Like", foreign_key: "user_id"#, dependent: :destroy
end
