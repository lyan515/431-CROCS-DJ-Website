require 'rails_helper'

RSpec.describe "gig_requests/edit", type: :view do
  before(:each) do
    @gig_request = assign(:gig_request, GigRequest.create!(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :email => "MyString",
      :gig_date => '01-Jan-2000', 
      :gig_time => '01:00',
      :gig_duration => 3
    ))
  end

  it "renders the edit gig_request form" do
    render

    assert_select "form[action=?][method=?]", gig_request_path(@gig_request), "post" do

      assert_select "input#gig_request_name[name=?]", "gig_request[name]"

      assert_select "input#gig_request_address[name=?]", "gig_request[address]"

      assert_select "input#gig_request_phone[name=?]", "gig_request[phone]"

      assert_select "input#gig_request_email[name=?]", "gig_request[email]"
    end
  end
end
