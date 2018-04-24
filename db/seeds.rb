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

Welcome.create!({:dummy => "dummy"})

dj_portfolios =  [{:name => 'John Smith', :bio => 'He will bury you in beats', :facebook_link => 'https://www.facebook.com/Jsmith/', :instagram_link => 'https://www.instagram.com/Jsmith/', :twitter_link => 'https://www.twitter.com/Jsmith/', :soundcloud_link => 'https://www.soundcloud.com/Jsmith/', :mixcloud_link => 'https://www.mixcloud.com/Jsmith/', :genres =>['rock','trap'], :welcome_id =>4},
                {:name => 'Jack Jeremy', :bio => 'His beats raise the dead', :facebook_link => 'https://www.facebook.com/JJeremy/', :instagram_link => 'https://www.instagram.com/JJeremy/', :twitter_link => 'https://www.twitter.com/JJeremy/', :soundcloud_link => 'https://www.soundcloud.com/JJeremy/', :mixcloud_link => 'https://www.mixcloud.com/JJeremy/', :genres =>['trap','electro'], :welcome_id =>4}]

dj_portfolios.each do |dj_portfolio|
  DjPortfolio.create!(dj_portfolio)
end



