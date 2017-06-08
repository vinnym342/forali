class OrganiserFollow < ApplicationRecord
  belongs_to :organiser
  belongs_to :user
end
