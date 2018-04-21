class Lan < ApplicationRecord
  has_many :tickets, dependent: :restrict_with_error
end
