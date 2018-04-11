require 'rails_helper'

RSpec.describe "gig_requests/index", type: :view do
  before(:each) do
    assign(:gig_requests, [
      GigRequest.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :email => "email@email.com",
        :gig_date => '01-Jan-2000', 
        :gig_time => '01:00',
        :gig_duration => 3
      ),
      GigRequest.create!(
        :name => "Name",
        :address => "Address",
        :phone => "Phone",
        :email => "email3@email.com",
        :gig_date => '01-Jan-2000', 
        :gig_time => '01:00',
        :gig_duration => 2
      )
    ])
  end

  it "renders a list of gig_requests" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
