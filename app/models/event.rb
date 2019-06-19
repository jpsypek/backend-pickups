class Event < ApplicationRecord
  has_many :user_events, dependent: :destroy
  has_many :users, through: :user_events
  validates :time, presence: true
  validates :longitude, presence: true
  validates :latitude, presence: true
end
