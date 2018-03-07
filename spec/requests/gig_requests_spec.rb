require 'rails_helper'

RSpec.describe "GigRequests", type: :request do
  describe "GET /gig_requests" do
    it "works! (now write some real specs)" do
      get gig_requests_path
      expect(response).to have_http_status(302)
    end
  end
end
