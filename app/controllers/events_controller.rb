class EventsController < ApplicationController

  def create
    @event = Event.new(ActiveSupport::JSON.decode(params[:newEvent]))
    respond_to do |format|
      if @event.save
        format.js { render :success => true, :text => @event.id.to_s }
      else
        format.js { render :success => true, :text => "fill in both title and body"}
      end
    end
  end

  def destroy
    @event = Event.find(params[:eventId])
    @event.destroy
    respond_to do |format|
      format.js { render :nothing => true }
    end
  end

  def edit
    @event = Event.find(ActiveSupport::JSON.decode(params[:editEvent])["id"].to_i)
    @event.update_attributes(ActiveSupport::JSON.decode(params[:editEvent]))
    respond_to do |format|
      format.js { render :nothing => true }
    end
  end

  def fetch
    @events = Event.all
    respond_to do |format|
      format.js { render :success => true, :json => @events.to_json( :only => [ :id, :title, :body, :start, :end] ) }
    end
  end


end
