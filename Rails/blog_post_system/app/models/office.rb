class Office < ApplicationRecord
  has_and_belongs_to_many :office_users, class_name: "User"
  validates :pincode, numericality: { only_integer: true }, length: { is: 6, message: "Pincode should be 6 digits" }, allow_blank: true
  validates :name, presence: true, uniqueness: true, on: :update
  validates :address, length: { in: 10..100 }
end
