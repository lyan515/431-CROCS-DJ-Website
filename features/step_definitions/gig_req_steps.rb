#(.*?) keeps code DRY so that other people can define their steps with this framework
#instead of creating new methods for their tests
    
Given (/^I am on the (.*?) page$/) do |arg|
    if arg == "Gig Request Create" 
       visit new_gig_request_path
    else
        raise "Could not find #{page}"
    end
end

When (/^I fill out the form with the following attributes:$/) do |table|
 criteria = table.rows_hash.each do |field, value|
   fill_in field, :with => value
 end
end

When (/^I click the (.*?) link$/) do |link|
    if link == "Create Gig Request"
        find('input[name="commit"]').click
    else
        #
    end
end

Then (/^I should see (.*?)$/) do |arg|
  if arg == "Required Fields Missing"
       expect(page).to have_current_path(gig_requests_path)# this is concerning... Gig request is not going back to new after a failed attempt
  elsif arg == "Request Success"
       expect(page).to have_current_path(gig_request_path(1))
  elsif arg == "Signed in as Admin" 
       visit home_page_path
  elsif arg == "not an Admin: Please log in as an Admin" 
       #check for error here
  end
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