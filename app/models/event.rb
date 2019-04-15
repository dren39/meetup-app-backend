class Event < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments

  # def remaining_seats
  #   self.available - self.appointments.length
  # end
end
