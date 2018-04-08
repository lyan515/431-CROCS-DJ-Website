require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the GigRequestsHelper. For example:
#
# describe GigRequestsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe GigRequestsHelper, type: :helper do
  describe "#emailCheck" do
  it "should be defined" do
    expect { emailCheck("ao@gmail.com") }.not_to raise_error()#::NoMethodError)
  end
  it 'classifies true cases [10 points]' , points: 10 do
    expect(emailCheck('ao@gmail.com')).to be_truthy, "valid email"
  end
  it 'classifies false cases [10 points]' , points: 10 do
    expect(emailCheck('a')).to be_falsy, "invalid email"
  end
  it 'works on the empty string [5 points]' , points: 5 do
    expect(emailCheck('')).to be_falsy
  end
  
end
end
