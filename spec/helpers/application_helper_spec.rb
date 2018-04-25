require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
# This should return the minimal set of attributes required to create a valid
  # DjPortfolio. As you add validations to DjPortfolio, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
   {uid:"113054678615933156222"}
  }

  let(:invalid_attributes) {
    {uid: "99999999999999999"}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DjPortfoliosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "Valid_User" do
    it "verifies that the user is legitimate" do
      @current_user = User.create! valid_attributes
      expect { user_current }.not_to raise_error()#::NoMethodError)
    end
  end
  
  describe "Invalid_User" do
    it "verifies that the user is not legitimate" do
      @current_user = User.create! invalid_attributes
      expect { user_valid }.not_to raise_error()#::NoMethodError)
    end
  end

  
end
