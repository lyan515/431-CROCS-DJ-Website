require 'rails_helper'

RSpec.describe "gig_requests/show", type: :view do
  before(:each) do
    @gig_request = assign(:gig_request, GigRequest.create!(
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :email => "Email",
      :gig_date => '01-Jan-2000', 
      :gig_time => '01:00'
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/01-Jan-2000/)
    expect(rendered).to match(/01:00/)
  end
end
