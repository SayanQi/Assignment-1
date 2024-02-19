class Task < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :pending_date, presence: true
end
