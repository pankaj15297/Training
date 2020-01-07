class Client < ApplicationRecord
	has_and_belongs_to_many :programmers, dependent: :destroy
end
