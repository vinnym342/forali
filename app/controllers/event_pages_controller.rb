class EventPagesController < ApplicationController
  before_action :set_event_page, only: [:show, :edit, :update, :destroy]

  # GET /event_pages
  # GET /event_pages.json
  def index
    @event_pages = EventPage.all
  end

  # GET /event_pages/1
  # GET /event_pages/1.json
  def show
  end

  # GET /event_pages/new
  def new
    @event_page = EventPage.new
  end

  # GET /event_pages/1/edit
  def edit
  end

  # POST /event_pages
  # POST /event_pages.json
  def create
    @event_page = EventPage.new(event_page_params)

    respond_to do |format|
      if @event_page.save
        format.html { redirect_to @event_page, notice: 'Event page was successfully created.' }
        format.json { render :show, status: :created, location: @event_page }
      else
        format.html { render :new }
        format.json { render json: @event_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_pages/1
  # PATCH/PUT /event_pages/1.json
  def update
    respond_to do |format|
      if @event_page.update(event_page_params)
        format.html { redirect_to @event_page, notice: 'Event page was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_page }
      else
        format.html { render :edit }
        format.json { render json: @event_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_pages/1
  # DELETE /event_pages/1.json
  def destroy
    @event_page.destroy
    respond_to do |format|
      format.html { redirect_to event_pages_url, notice: 'Event page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_page
      @event_page = EventPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_page_params
      params.require(:event_page).permit(:title, :host)
    end
end
