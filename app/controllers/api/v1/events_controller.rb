class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all.select{|event| event.time > Time.now}
    render json: @events
  end

  def create
    @event = Event.create(event_params)
    render json: @event.id
  end

  def update
    @event = Event.find(params[:id])
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

end
