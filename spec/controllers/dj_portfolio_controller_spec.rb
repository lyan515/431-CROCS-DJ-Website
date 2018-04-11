require 'rails_helper'

RSpec.describe DjPortfoliosController, type: :controller do
# This should return the minimal set of attributes required to create a valid
  # DjPortfolio. As you add validations to DjPortfolio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
   {name: "Jahn Smith", bio: "henlo im jahn"}
  }

  let(:invalid_attributes) {
    {bio: "henlo im bead"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DjPortfoliosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all dj_portfolios as @dj_portfolios" do
      @dj_portfolio = DjPortfolio.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:dj_portfolios)).to eq(@dj_portfolio)
    end
  end

  describe "GET #show" do
    it "assigns the requested dj_portfolio as @dj_portfolio" do
      dj_portfolio = DjPortfolio.create! valid_attributes
      get :show, {:id => dj_portfolio.to_param}, valid_session
      expect(assigns(:dj_portfolio)).to eq(dj_portfolio)
    end
  end

  describe "GET #new" do
    it "assigns a new dj_portfolio as @dj_portfolio" do
      get :new, {}, valid_session
      expect(assigns(:dj_portfolio)).to be_a_new(DjPortfolio)
    end
  end

  describe "GET #edit" do
    it "assigns the requested dj_portfolio as @dj_portfolio" do
      dj_portfolio = DjPortfolio.create! valid_attributes
      get :edit, {:id => dj_portfolio.to_param}, valid_session
      expect(assigns(:dj_portfolio)).to eq(dj_portfolio)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new DjPortfolio" do
        expect {
          post :create, {:dj_portfolio => valid_attributes}, valid_session
        }.to change(DjPortfolio, :count).by(1)
      end

      it "assigns a newly created dj_portfolio as @dj_portfolio" do
        post :create, {:dj_portfolio => valid_attributes}, valid_session
        expect(assigns(:dj_portfolio)).to be_a(DjPortfolio)
        expect(assigns(:dj_portfolio)).to be_persisted
      end

      it "redirects to the created dj_portfolio" do
        post :create, {:dj_portfolio => valid_attributes}, valid_session
        expect(response).to redirect_to(DjPortfolio.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved dj_portfolio as @dj_portfolio" do
        post :create, {:dj_portfolio => invalid_attributes}, valid_session
        expect(assigns(:dj_portfolio)).to be_a_new(DjPortfolio)
      end

      it "re-renders the 'new' template" do
        post :create, {:dj_portfolio => invalid_attributes}, valid_session
        expect(response).to render_template("dj_portfolios/new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {name: "Jana Smath", bio: "hewwo im Jana OWO"}
      }

      it "updates the requested dj_portfolio" do
        dj_portfolio = DjPortfolio.create! valid_attributes
        put :update, {:id => dj_portfolio.to_param, :dj_portfolio => new_attributes}, valid_session
        dj_portfolio.reload
        expect(assigns(:dj_portfolio).attributes['name']).to match(new_attributes[:name])
      end

      it "assigns the requested dj_portfolio as @dj_portfolio" do
        dj_portfolio = DjPortfolio.create! valid_attributes
        put :update, {:id => dj_portfolio.to_param, :dj_portfolio => valid_attributes}, valid_session
        expect(assigns(:dj_portfolio)).to eq(dj_portfolio)
      end

      it "redirects to the dj_portfolio" do
        dj_portfolio = DjPortfolio.create! valid_attributes
        put :update, {:id => dj_portfolio.to_param, :dj_portfolio => valid_attributes}, valid_session
        expect(response).to redirect_to(dj_portfolio)
      end
    end
  end
#response.should render_template(:index)
  describe "DELETE #destroy" do
    it "destroys the requested dj_portfolio" do
      dj_portfolio = DjPortfolio.create! valid_attributes
      expect {
        delete :destroy, {:id => dj_portfolio.to_param}, valid_session
      }.to change(DjPortfolio, :count).by(-1)
    end

    it "redirects to the dj_portfolios list" do
      dj_portfolio = DjPortfolio.create! valid_attributes
      delete :destroy, {:id => dj_portfolio.to_param}, valid_session
      expect(response).to redirect_to(dj_portfolios_url)
    end
  end
  
end
