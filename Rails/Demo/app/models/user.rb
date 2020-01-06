class User < ApplicationRecord
	has_one :product, dependent: :destroy
end
