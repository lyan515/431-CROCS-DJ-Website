class GigRequestsController < ApplicationController
  before_action :set_gig_request, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  include GigRequestsHelper
  # require 'google/api_client'
  
  # GET /gig_requests
  # GET /gig_requests.json
  
  def index
    if !user_current#no unauthorized user should be on this page
      redirect_to root_path
    elsif !user_valid
      redirect_to root_path
    else
      @gig_requests = GigRequest.all
    end
    
    @sort = params[:sort]
    @gig_requests = GigRequest.all.order(@sort)
    
  end

  # GET /gig_requests/1
  # GET /gig_requests/1.json
  def show
   set_gig_request
  end

  # GET /gig_requests/new
  def new
    @gig_request = GigRequest.new
    @gig_request.gig_duration = @gig_request.gig_duration.to_i
  end

  # GET /gig_requests/1/edit
  def edit
  end

  # POST /gig_requests
  # POST /gig_requests.json
  def create
    @gig_request = GigRequest.new(gig_request_params)
    
    #@gig_request.name = encode(@gig_request.name)
    #@gig_request.address = encode(@gig_request.address)
    #@gig_request.email = encode(@gig_request.email)

    respond_to do |format|
      if @gig_request.save
        format.html { redirect_to @gig_request, notice: 'Gig request was successfully created.' }
        format.json { render :show, status: :created, location: @gig_request }
      else
        format.html { render :new }
        format.json { render json: @gig_request.errors, status: :unprocessable_entity }
        #flash[:error] = @gig_request.errors.full_messages[0]
        #render 'new'
      end
    end
  end

  # PATCH/PUT /gig_requests/1
  # PATCH/PUT /gig_requests/1.json
  def update
    respond_to do |format|
      if @gig_request.update(gig_request_params)
        format.html { redirect_to @gig_request, notice: 'Gig request was successfully updated.' }
        format.json { render :show, status: :ok, location: @gig_request }
      else
        format.html { render :edit }
        format.json { render json: @gig_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gig_requests/1
  # DELETE /gig_requests/1.json
  def destroy
    @gig_request.destroy
    respond_to do |format|
      format.html { redirect_to gig_requests_url, notice: 'Gig request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def approve
    # create_calendar_event
    set_gig_request
    @gig_request.approval = true
    @gig_request.save
  end
  
  def deny
    set_gig_request
    @gig_request.approval = false
    @gig_request.client_approval = false
    @gig_request.save
  end
  
  def show_client_final
    set_gig_request
  end
  
  def show_client_final_approve
    set_gig_request
    @gig_request.client_approval = true
    @gig_request.save
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gig_request
      #we use the hashids gem to create a reversible hash with seed calebWillNeverSeeThis and key params[:id]
      id = Hashids.new("calebWillNeverSeeThis").decode(params[:id]).try(:first)
      #then use that hash to index the request. check /models/gig_request.rb for the override.
      @gig_request = GigRequest.find(id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gig_request_params
      params.require(:gig_request).permit(:name, :address, :phone, :email, :gig_date, :gig_time, :gig_duration, :light_rent, :speaker_rent, :dj_preferred, :dj_actual, :approval, :client_approval, :price)
    end
    
    def create_calendar_event
        puts 'in calendar event'
        if user_current && user_valid
          admin_token = get_admin_token
        end
        # puts test_token
        
        @event = {
          'summary' => 'Sample Event',
          'description' => 'Sample description',
          'location' => 'TAMU',
          'start' => { 'dateTime' => '2018-04-20T17:00:00-07:00' },
          'end' => { 'dateTime' => '2018-04-20T17:00:00-07:00' },
          'attendees' => [ { "email" => 'calebWillNeverSeeThis@example.com' },
          { "email" =>'jimmyWillNeverSeeThis@example.com' } ] }
        
        client = Google::APIClient.new
        client.authorization.access_token = admin_token
        service = client.discovered_api('calendar', 'v3')
        
        @set_event = client.execute(:api_method => service.events.insert,
                                :parameters => {'calendarId' => 'crocs431@gmail.com', 'sendNotifications' => true},
                                :body => JSON.dump(@event),
                                :headers => {'Content-Type' => 'application/json'})
    end
end
