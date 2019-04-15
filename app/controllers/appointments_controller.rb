class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
    render json: @appointments
  end

  def create
    @appointment = Appointment.create(appointment_params)
  end

  private
  def appointment_params
    params.require(:appointment).permit(:user_id, :event_id, :admin)
  end
end
