# Model for List
class List < ApplicationRecord
  acts_as_list

  has_many :cards, -> { order(position: :asc) }, dependent: :destroy, inverse_of: :list
  accepts_nested_attributes_for :cards

  validates :name, presence: true

  scope :sorted, -> { order(position: :asc) }
end
