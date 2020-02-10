class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, dependent: :destroy
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_many :users, through: :comments, dependent: :destroy
end
