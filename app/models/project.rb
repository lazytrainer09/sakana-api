class Project < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
end
