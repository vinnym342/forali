class Organiser < ApplicationRecord
  has_many :organiser_follow
  has_many :event
end
