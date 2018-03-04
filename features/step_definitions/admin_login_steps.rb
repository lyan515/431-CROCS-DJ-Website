#(.*?) keeps code DRY so that other people can define their steps with this framework
#instead of creating new methods for their tests
    
Given (/^I am logedin on (.*?) account$/) do |arg|
    if arg == "N/A" 
        #should see google sign in
    elsif arg == "Invalid"
        #should see "not an Admin: Please log in as an Admin"
    elsif arg == "Valid"
        #should see "Signed in as Admin"
    else
        #error
    end
end

When (/^ I click the (.*?) link/) do |link|
    click_link(link)
end

Then (/^I should see (.*?) $/) do |arg|
    if arg == "Signed in as Admin" 
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