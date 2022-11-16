class Task < ApplicationRecord
  belongs_to :category

  validates :title, presence: true, length: { in: 2..20 }

  validates_inclusion_of :priority_level, in: 1..3
  validates :deadline, comparison: { greater_than: Date.today }
end
