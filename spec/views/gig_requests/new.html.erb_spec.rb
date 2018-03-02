require 'rails_helper'

RSpec.describe "gig_requests/new", type: :view do
  before(:each) do
    assign(:gig_request, GigRequest.new(
      :name => "MyString",
      :address => "MyString",
      :phone => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new gig_request form" do
    render

    assert_select "form[action=?][method=?]", gig_requests_path, "post" do

      assert_select "input#gig_request_name[name=?]", "gig_request[name]"

      assert_select "input#gig_request_address[name=?]", "gig_request[address]"

      assert_select "input#gig_request_phone[name=?]", "gig_request[phone]"

      assert_select "input#gig_request_email[name=?]", "gig_request[email]"
    end
  end
end
