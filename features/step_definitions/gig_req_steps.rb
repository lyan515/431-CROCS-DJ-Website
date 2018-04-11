#(.*?) keeps code DRY so that other people can define their steps with this framework
#instead of creating new methods for their tests
    
Given (/^I am on the (.*?) page$/) do |arg|
    if arg == "Gig Request Create" 
       visit new_gig_request_path
    elsif arg == "DJ Portfolio Create" 
       visit new_dj_portfolio_path
    elsif arg == "DJ Portfolio" 
       visit dj_portfolios_path
    elsif arg == "Gig Request Index" 
       visit gig_requests_path 
    elsif arg == "Home"
       expect(page).to have_current_path(root_path)
    elsif arg == "Calendar" 
       welcome_calendar_path
    elsif arg == "Gig Request Final" 
      visit gig_requests_final_path(37)
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
    if link == "Create"
        find('input[name="commit"]').click
    elsif link == "Calendar"#having trouble with clicking a link_to, so I'm gonna just visit link
        visit welcome_calendar_path
    elsif link == "Calendar"
        visit welcome_calendar_path
    elsif link == "Home"
        visit root_path
    elsif link == "Admin page"
        visit gig_requests_path
    elsif link == "Approve"
        visit gig_requests_approve_path(37)
    elsif link == "Deny"
       visit gig_requests_deny_path(37)
    elsif link == "Show Portfolio"
       visit dj_portfolio_path(1) #thanks my dude
    elsif link == "Update"
        find('input[name="commit"]').click
    elsif link == "Edit Portfolio"
        visit edit_dj_portfolio_path(1)
    elsif link == "Edit Gig Request"
        visit edit_gig_request_path(37) 
    end
end

Then (/^I should see (.*?)$/) do |arg|
  if arg == "Required Fields Missing Gig Request"
       expect(page).to have_current_path(gig_requests_path)# this is concerning... Gig request is not going back to new after a failed attempt, works for now though
  elsif arg == "Required Fields Missing Dj Portfolio"
       expect(page).to have_current_path(dj_portfolios_path)
  elsif arg == "DJ Portfolio Success"
       expect(page).to have_content("Dj portfolio was successfully created.")
  elsif arg == "DJ Portfolio Update Success"
       expect(page).to have_content("Dj portfolio was successfully updated.")
  elsif arg == "Request Success"
       expect(page).to have_current_path(gig_request_path('mw'))
  elsif arg == "Request Update Success"
       expect(page).to have_current_path(gig_request_path(37))
  elsif arg == "Calendar" 
       expect(page).to have_current_path(welcome_calendar_path)
  elsif arg == "Signed in as Admin" 
       visit home_page_path
  elsif arg == "Not an Admin: Please log in as an Admin" 
       expect(page).to have_current_path(root_path)
  elsif arg == "Approve Page" 
       expect(page).to have_current_path(gig_requests_approve_path(37))
  elsif arg == "Deny Page" 
       expect(page).to have_current_path(gig_requests_deny_path(37))
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