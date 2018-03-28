#(.*?) keeps code DRY so that other people can define their steps with this framework
#instead of creating new methods for their tests

Given (/^I am logged in on (.*?) account$/) do |arg|
  if arg == "N/A"
   # (current_user.uid).should equal(null_session)
  elsif arg == "Invalid"
    #(current_user.uid).should_not equal("113054678615933156222")
  else
    @current_user = FactoryGirl.build(:user)
    cookies[:stub_user_id] = @current_user.id
  end
  

end

#since step definitions are global, i took out the click link definition, since we already have one in the other file

When(/^I login with a (.*?) account$/) do |arg|
  
end





#useful simulated actions
# visit('page_url') # navigate to page
# click_link('id_of_link') # click link by id
# click_link('link_text') # click link by link text
# click_button('button_name') # fill text field
# fill_in('First Name', :with => 'John') # choose radio button
# choose('radio_button') # choose radio button
# check('checkbox') # check in checkbox
# uncheck('checkbox') # uncheck in checkbox
# select('option', :from=>'select_box') # select from dropdown
# attach_file('image', 'path_to_image') # upload file