class Art < ApplicationRecord
	validates :published, inclusion: { in: [true, false] }
	# validates :published, presence: true  #not working on false gives blank
	scope :published, -> { where(published: false) }
	# scope :published, ->(s) { where("published = ?", s)}
end
