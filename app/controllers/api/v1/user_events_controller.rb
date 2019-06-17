class Api::V1::UserEventsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    @user_events = UserEvent.all
    render json: @user_events
  end

  def create
    @user_event = UserEvent.create(user_event_params)
    render json: @user_event
  end

  def destroy
    @user_event = UserEvent.find(params[:id])
    @user_event.destroy
  end

  private

  def user_event_params
    params.require(:user_event).permit(:user_id, :event_id)
  end
end
