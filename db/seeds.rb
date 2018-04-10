# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

gig_requests = [{:name => 'John Smith', :address => '111 Juniper Dr', :phone => '999-999-9999', :email => 'john.smith69@gmail.com', :gig_date => '01-Jan-2018', :gig_time => '08:30', :gig_duration => 3, :light_rent => false, :speaker_rent => true,  :dj_preferred => "Clayton Wells", :approval => false, :price => 0},
                {:name => 'Samoa Joe', :address => '999 Coquina Crossing', :phone => '123-456-7890', :email => 'heisfat@gmail.com', :gig_date => '02-Feb-2018', :gig_time => '22:30', :gig_duration => 2, :light_rent => false, :speaker_rent => false, :dj_preferred => "Jcroc", :approval => false, :price => 0}]

gig_requests.each do |gig_request|
  GigRequest.create!(gig_request)
end

dj_portfolio = [{:name => 'John Smith'}]

DjPortfolio.create!(dj_portfolio)
