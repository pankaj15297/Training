class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  scope :enabled_comments, -> { where enable: true }
end
