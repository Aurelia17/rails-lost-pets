class Pet < ApplicationRecord
  validates :name, presence: true
  validates :species, inclusion: { in: %w(dog cat turtle dragon snake rabbit) }

  def found_days_ago
    days_ago = (Date.today - found_on).to_i
    if days_ago == 0
      "today"
    elsif days_ago == 1
      "yesterday"
    else
      "#{days_ago} days ago"
    end
  end
end
