class Task < ApplicationRecord
  # after_create -> { puts " created this!!!!!!!!!#{self.id}" }
  after_create :xyz


  def xyz
    puts ("this is xyz metod!!!!!!!")
  end
end
