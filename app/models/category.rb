class Category < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 2..20 }
end
