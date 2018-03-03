class Family < ApplicationRecord
  validates_presence_of :last_name, :capability

  scope :active, -> { where("active = true") }
  scope :not_active, -> { where("active = false") }

  def self.active
    where(active: true)
  end

  def self.inactive
    where(active: false)
  end
end
