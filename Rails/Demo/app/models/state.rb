class State < ApplicationRecord
	has_many :districs, dependent: :destroy
end
