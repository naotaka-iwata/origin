class EventsController < ApplicationController

before_action :authenticate_club!, only: [:edit, :update, :destroy, :new, :create]
    def index
      @events = Event.all
    end

    def show
      @event = Event.find(params[:id])
  
    end

    def new
      @event = Event.new
    end

    def edit
      @event = Event.find(params[:id])
    end

    def destroy
      Event.find(params[:id]).destroy
      redirect_to action: :index
    end

    def create
      event = Event.new(event_params)
      event.club_id = current_club.id
      if event.save
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
    end

    private
    def event_params
      params.require(:event).permit(:event_day, :event_content)
    end

end
