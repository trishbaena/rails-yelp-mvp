class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: %w[french japanese chinese belgian italian]}, presence: true
  has_many :reviews, dependent: :destroy
end
