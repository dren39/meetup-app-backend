class EventsController < ApplicationController
  # skip_before_action :authorized, only: [:index]

  def index
    @events = Event.all
    render json: @events
  end

  def create
    @event = Event.create(event_params)
    render json: @event
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    render json: @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    render json: @event
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :price, :available, :event_date, :event_time, :address)
  end
end
