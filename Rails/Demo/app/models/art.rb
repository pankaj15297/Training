class Art < ApplicationRecord
	validates :published, presence: true
	# scope :published, -> { where(published: false) }
	scope :published, ->(s) { where("published = ?", s)}
end
