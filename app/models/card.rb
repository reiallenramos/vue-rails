# Model for Card
class Card < ApplicationRecord
  acts_as_list scope: :list

  belongs_to :list, inverse_of: :cards

  validates :name, presence: true
end
