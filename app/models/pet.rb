class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: %w(dog cat turtle dragon snake rabbit) }
end
