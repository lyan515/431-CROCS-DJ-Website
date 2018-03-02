require 'rails_helper'

RSpec.describe "gig_requests/index", type: :view do
  before(:each) do
    assign(:gig_requests, [
      GigRequest.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :email => "Email"
      ),
      GigRequest.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :email => "Email"
      )
    ])
  end

  it "renders a list of gig_requests" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
