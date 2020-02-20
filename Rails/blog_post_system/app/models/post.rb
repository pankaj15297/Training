class Post < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :post_likes, class_name: "Like", foreign_key: "post_id", dependent: :destroy
  has_many :liked_users, through: :post_likes, source: :user
  has_many :post_comments, class_name: "Comment", foreign_key: "post_id", dependent: :destroy
  has_many :commented_users, through: :post_comments, source: :user
  has_many :post_pictures, as: :imageable, class_name: "Picture", foreign_key: "imageable_id"
  validates :title, presence: true
  validates :content, absence: true

  after_create :ensure_first_letter_capital

  def ensure_first_letter_capital
  	self.title = title.capitalize
  end
end