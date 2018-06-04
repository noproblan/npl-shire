class Lan < ApplicationRecord
  has_many :tickets, dependent: :restrict_with_error

  scope :upcoming, -> { where('starts_at >= ?', Time.zone.now) }
  scope :current, -> { where('starts_at <= ? AND ends_at >= ?', Time.zone.now, Time.zone.now) }
  scope :current_or_upcoming, -> { where('ends_at >= ?', Time.zone.now) }

  def self.first_current_or_upcoming
    Lan.current_or_upcoming.order(starts_at: :asc).first
  end
end
