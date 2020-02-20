class Office < ApplicationRecord
  has_and_belongs_to_many :office_users, class_name: "User"
end
