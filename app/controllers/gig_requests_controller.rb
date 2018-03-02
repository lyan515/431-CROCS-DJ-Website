class GigRequestsController < ApplicationController
  before_action :set_gig_request, only: [:show, :edit, :update, :destroy]

  # GET /gig_requests
  # GET /gig_requests.json
  def index
    @gig_requests = GigRequest.all
  end

  # GET /gig_requests/1
  # GET /gig_requests/1.json
  def show
  end

  # GET /gig_requests/new
  def new
    @gig_request = GigRequest.new
  end

  # GET /gig_requests/1/edit
  def edit
  end

  # POST /gig_requests
  # POST /gig_requests.json
  def create
    @gig_request = GigRequest.new(gig_request_params)

    respond_to do |format|
      if @gig_request.save
        format.html { redirect_to @gig_request, notice: 'Gig request was successfully created.' }
        format.json { render :show, status: :created, location: @gig_request }
      else
        format.html { render :new }
        format.json { render json: @gig_request.errors, status: :unprocessable_entity }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gig_request
      @gig_request = GigRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gig_request_params
      params.require(:gig_request).permit(:name, :address, :phone, :email, :gig_date, :gig_time)
    end
end
