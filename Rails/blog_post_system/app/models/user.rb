class User < ApplicationRecord
  has_many :user_posts, -> { order('title asc') }, class_name: "Post", foreign_key: "user_id", inverse_of: :user, dependent: :destroy
  has_many :user_likes, class_name: "Like", foreign_key: "user_id", dependent: :destroy
  has_many :liked_posts, through: :user_likes, source: :post
  has_many :user_comments, class_name: "Comment", foreign_key: "user_id", dependent: :destroy
  has_many :commented_posts, through: :user_comments, source: :post
  has_many :user_pictures, as: :imageable, class_name: "Picture", foreign_key: "imageable_id"
  has_and_belongs_to_many :user_offices, class_name: "Office"

  validates :name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows laters" }, length: { maximum: 20}
  validates :contact, presence: true, numericality: true, length: { is: 10 }

  scope :paid, -> (args){ where ("paid = ?"), args }

  before_validation :ensure_first_letter_capital
  
  def ensure_first_letter_capital
  	self.name = name.capitalize
  end
end

