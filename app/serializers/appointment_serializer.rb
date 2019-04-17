class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :admin, :user_id, :event_id

  def user_id
    self.object.user.fullname
  end
end
