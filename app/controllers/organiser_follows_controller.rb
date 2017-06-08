class OrganiserFollowsController < ApplicationController
  def new
    @organiser_follow = OrganiserFollow.find_by(organiser: params[:organiser_id],user: current_user)
	if @organiser_follow.present?
		@organiser_follow.destroy
		respond_to do |format|
		  format.html { redirect_to request.headers["HTTP_REFERER"], notice: 'Organiser follow was successfully destroyed.' ,search: @search_params}
		  format.json { head :no_content }
		end
	else
    @new_follow = OrganiserFollow.new(user: current_user, organiser_id: params[:organiser_id] )
    respond_to do |format|
      if @new_follow.save
        format.html { redirect_to request.headers["HTTP_REFERER"], notice: 'Organiser follow was successfully created.'}
        format.json { render :show, status: :created, location: @organiser_follow }
      else
        format.html { redirect_to request.headers["HTTP_REFERER"]}
		format.json { render json: @new_follow.errors, status: :unprocessable_entity }
      end
    end
	end
  end
end
