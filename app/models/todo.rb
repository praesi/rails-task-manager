class Todo < ApplicationRecord
  def mark_as_done
    self.done = true
    self.save
  end
end
