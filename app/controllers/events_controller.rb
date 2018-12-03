class EventsController < ApplicationController
  PER = 5

  def index
    @events = Event.all
    @events = Event.paginate(:page => params[:page], :per_page => PER)
    @categories = EventCategory.all
  end

  def category
    @events = Event.where(:event_category_id => params[:id])
  end

end