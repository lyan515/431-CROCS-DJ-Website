require 'rails_helper'

RSpec.describe "gig_requests/show", type: :view do
  before(:each) do
    @gig_request = assign(:gig_request, GigRequest.create!(
      :name => "Name",
      :address => "Address",
      :phone => "Phone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Email/)
  end
end
