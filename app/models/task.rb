class Task < ApplicationRecord
  # after_create -> { puts " created this!!!!!!!!!#{self.id}" }
  after_create :xyz
  validates :name, presence: true
  validates :description, presence: true
  validates :pending_date, presence: true

  def xyz
    puts ("this is xyz metod!!!!!!!")
  end
end
