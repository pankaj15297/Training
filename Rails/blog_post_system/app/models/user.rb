class User < ApplicationRecord
  before_save :firstname_capitalization, :lastname_capitalization, :paid_capitalization, :address_capitalization, :email_downcase
  
  has_many :user_posts, -> { order('title asc') }, class_name: "Post", foreign_key: "user_id", dependent: :destroy
  
  has_many :user_likes, class_name: "Like", foreign_key: "user_id", dependent: :destroy
  has_many :liked_posts, through: :user_likes, source: :post
  
  has_many :user_comments, class_name: "Comment", foreign_key: "user_id", dependent: :destroy
  has_many :commented_posts, through: :user_comments, source: :post
  
  has_many :user_pictures, as: :imageable, class_name: "Picture", foreign_key: "imageable_id"
  
  has_many :user_post_category, through: :user_posts, source: :category

  validates :firstname, presence: true, length: { maximum: 50 }
  validates :lastname, presence: true, length: { maximum: 50 }
  validates :contact, uniqueness: true, presence: true, numericality: true, length: { is: 10 }
  validates :email, uniqueness: true, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
    message: "not valid" }

  scope :paid, -> (args){ where ("paid = ?"), args }

  after_initialize do |user|
    puts "You have initialized an object!"
  end

  after_find do |user|
    puts "You have found an object!"
  end

  after_touch do |user|
    puts "You have touched an object"
  end
  
  def firstname_capitalization
    word = firstname.split(' ')
    word.each do |w|
      w.capitalize!
    end
    self.firstname = word.join(' ')
  end

  def lastname_capitalization
    word = lastname.split(' ')
    word.each do |w|
      w.capitalize!
    end
    self.lastname = word.join(' ')
  end

  def paid_capitalization
    self.paid = paid.capitalize
  end
  
  def address_capitalization
    word = address.split(' ')
    word.each do |w|
      w.capitalize!
    end
    self.address = word.join(' ')
  end

  def email_downcase
    self.email = email.downcase
  end

end

