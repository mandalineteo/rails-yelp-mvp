class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { within: %w(chinese italian japanese french belgian), message: "#{:category} is not a valid category" }
end
