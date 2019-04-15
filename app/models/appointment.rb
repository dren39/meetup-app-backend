class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  # validate :is_space_available

  # def is_space_available
  #   if self.event.remaining_seats <= 0
  #     self.errors.add(:event_id, "no remaining seats")
  #   end
  # end

end
