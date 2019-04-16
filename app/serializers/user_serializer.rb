class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :fullname
  # has_many :appointments
  has_many :events, through: :appointments
end
