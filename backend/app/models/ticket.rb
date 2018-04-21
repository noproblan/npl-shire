class Ticket < ApplicationRecord
  belongs_to :lan
  belongs_to :user
  has_many :ticket_options, dependent: :destroy

  POSSIBLE_STATES = %i[ordered paid].freeze
  enum status: POSSIBLE_STATES.zip(POSSIBLE_STATES).to_h
end
