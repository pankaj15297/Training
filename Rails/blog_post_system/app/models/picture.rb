class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  
  validates :name, uniqueness: true, on: :create

  before_save :name_capitalization

  def name_capitalization
  	self.name = name.capitalize
  end
end
