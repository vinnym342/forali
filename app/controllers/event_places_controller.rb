class EventPlacesController < ApplicationController
  # POST /event_places
  # POST /event_places.json
  def new
	event = Event.find(params[:event_id])
	current_follow =EventPlace.find_by(event: event,user: current_user.id)
	if !current_follow.present?
    @event_place = EventPlace.new(event_id: params[:event_id],user: current_user)

    respond_to do |format|
      if @event_place.save
        format.html { redirect_to request.headers["HTTP_REFERER"], notice: 'Event place was successfully created.' }
        format.json { render :show, status: :created, location: @event_place }
      else
        format.json { render json: @event_place.errors, status: :unprocessable_entity }
      end
    end
	else
	current_follow.destroy
    respond_to do |format|
      format.html { redirect_to request.headers["HTTP_REFERER"],notice: 'Event place was successfully destroyed.' }
      format.json { head :no_content }
	end
	end
  end

end
