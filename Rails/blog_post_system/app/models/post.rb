class Post < ApplicationRecord
  before_save :title_capitalization, :content_capitalization
  after_destroy :log_destroy_action

  belongs_to :user
  
  belongs_to :category
  
  has_many :post_likes, class_name: "Like", foreign_key: "post_id", dependent: :destroy
  has_many :liked_users, through: :post_likes, source: :user
  
  has_many :post_comments, class_name: "Comment", foreign_key: "post_id", dependent: :destroy
  has_many :commented_users, through: :post_comments, source: :user
  
  has_many :post_pictures, as: :imageable, class_name: "Picture", foreign_key: "imageable_id"

  validates :title, presence: true
  validates :content, presence: true

  def title_capitalization
  	self.title = title.capitalize
  end

  def content_capitalization
    self.content = content.capitalize
  end

  def log_destroy_action
    puts "Post destroyed"
  end
end