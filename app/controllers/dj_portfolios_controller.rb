class DjPortfoliosController < ApplicationController
  before_action :set_dj_portfolio, only: [:show, :edit, :update, :destroy]
  include ApplicationHelper
  # GET /dj_portfolios
  # GET /dj_portfolios.json
  def index
    @dj_portfolios = DjPortfolio.all
  end

  # GET /dj_portfolios/1
  # GET /dj_portfolios/1.json
  def show
  end

  # GET /dj_portfolios/new
  def new
    @dj_portfolio = DjPortfolio.new
    # @dj_portfolio.avatar = params[:file] ???
  end

  # GET /dj_portfolios/1/edit
  def edit
  end

  # POST /dj_portfolios
  # POST /dj_portfolios.json
  def create
    @dj_portfolio = DjPortfolio.new(dj_portfolio_params)

    respond_to do |format|
      if @dj_portfolio.save
        format.html { redirect_to @dj_portfolio, notice: 'Dj portfolio was successfully created.' }
        format.json { render :show, status: :created, location: @dj_portfolio }
      else
        format.html { render :new }
        format.json { render json: @dj_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dj_portfolios/1
  # PATCH/PUT /dj_portfolios/1.json
  def update
    respond_to do |format|
      if @dj_portfolio.update(dj_portfolio_params)
        format.html { redirect_to @dj_portfolio, notice: 'Dj portfolio was successfully updated.' }
        format.json { render :show, status: :ok, location: @dj_portfolio }
      else
        format.html { render :edit }
        format.json { render json: @dj_portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dj_portfolios/1
  # DELETE /dj_portfolios/1.json
  def destroy
    @dj_portfolio.destroy
    respond_to do |format|
      format.html { redirect_to dj_portfolios_url, notice: 'Dj portfolio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dj_portfolio
      @dj_portfolio = DjPortfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dj_portfolio_params
      params.require(:dj_portfolio).permit(:name, :bio, :avatar, :facebook_link, :instagram_link, :twitter_link, :soundcloud_link, :mixcloud_link)
    end
end
