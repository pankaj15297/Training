class Art < ApplicationRecord
	validates :published, inclusion: { in: [true, false] }
	# validates :published, presence: true
	scope :published, -> { where(published: false) }
	# scope :published, ->(s) { where("published = ?", s)}
end
