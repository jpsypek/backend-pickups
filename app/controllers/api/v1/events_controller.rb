class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: [:update, :destroy]

  def index
    @events = Event.all.select{|event| event.time > Time.now}
    render json: @events
  end

  def create
    @event = Event.create(event_params)
    render json: @event.id
  end

  def update
    @event.update(event_params)
    render json: @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:sport, :time, :skill_level, :location, :latitude, :longitude, :owner)
  end

  def find_event
    @event = Event.find(params[:id])
  end

end
