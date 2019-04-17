class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :event_date, :event_time, :address, :description, :available, :price

  # has_many :users
  has_many :appointments


end
