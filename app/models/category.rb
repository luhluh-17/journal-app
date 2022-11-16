class Category < ApplicationRecord
  belongs_to :user
  has_many :tasks

  validates :title, presence: true, length: { in: 2..20 }
end
