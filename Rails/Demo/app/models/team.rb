class Team < ApplicationRecord
	has_many :subordinates, class_name: "Team", foreign_key: "manager_id", dependent: :destroy
  	belongs_to :manager, class_name: "Team", optional: true
end
