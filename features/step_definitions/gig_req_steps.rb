#(.*?) keeps code DRY so that other people can define their steps with this framework
#instead of creating new methods for their tests
    
Given (/^I am on the (.*?) page$/) do |arg|
    if arg == "Gig Request" 
        visit gig_request_path
    else
        raise "Could not find #{page}"
    end
end

When (/^I fill out the form with the following attributes:$/) do |table|
   puts table.rows_hash
   criteria = table.rows_hash.each do |field, value|
     fill_in field, :with => value
   end
end

Then (/^I should see (.*?) $/) do |arg|
    if arg == "Success Page" 
        #should be Show
    elsif arg == "Required Fields Missing" 
        #check for error here
    end
end

When (/^ I click the (.*?) link$/) do |link|
    click_link(link)
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