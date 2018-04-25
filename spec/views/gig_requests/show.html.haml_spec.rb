require 'rails_helper'

RSpec.describe "gig_requests/show", type: :view do
  before(:each) do
    @gig_request = assign(:gig_request, GigRequest.create!(
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :email => "email@email.com",
      :gig_date => '01-Jan-2000', 
      :gig_time => '01:00',
      :gig_duration => 2
    ))
    @current_user = FactoryGirl.build(:user)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/January 01, 2000/)
    expect(rendered).to match(/01:01 AM/)
  end
end
