class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  validates :name, uniqueness: true, on: :create
end
