Given(/^I am on the start page for the form$/) do
  visit config['gro_host']
end

Then(/^I can see the questions for the (.*) page of the form$/) do | header |
  expect(page).to have_content CONTENT["#{header}_header"]
end

When(/^I click (.*) and then continue?$/) do | field |
  step "I click on #{field}"
  step 'I click continue'
end

When(/^I click on (.*)$/) do | field |
  find_by_id(CONTENT[field]).click
end

Then(/^I am taken to the (.*) page of the form$/) do | header |
  expect(page).to have_content CONTENT["#{header}_header"]
end

And(/^I can see the (.*) (?:element|field)$/) do | element |
  expect(page).to have_css "##{CONTENT["#{element}"]}"
end

When(/^I fill in the name on the certificate$/) do
  step 'I enter full_name into the person_text field'
  step 'I click continue'
end

When(/^I enter both names on the certificate$/) do
  step 'I enter full_name into the person_one field'
  step 'I enter first_alt_name into the person_two field'
  step 'I click continue'
end

When(/^I enter my full name$/) do
  step 'I enter full_name into the name_text field'
  step 'I click continue'
end

When(/^I enter a date$/) do
  step 'I enter day into the when_day field'
  step 'I enter month into the when_month field'
  step 'I enter year into the when_year field'
  step 'I click continue'
end

When(/^I enter an invalid date$/) do
  step 'I enter invalid_day into the when_day field'
  step 'I enter invalid_month into the when_month field'
  step 'I enter invalid_year into the when_year field'
  step 'I click continue'
end

When(/^I choose (.*) for existing and (.*) for previous complaint$/) do | existing, previous |
  step 'I enter free_text into the details_text field'
  step "I select #{existing} on the existing-radio button"
  step "I select #{previous} on the previous-radio button"
  step 'I click continue'
end

When(/^I enter (.*) into the (.*) field$/) do | text, field |
  fill_in CONTENT[field], :with => CONTENT[text]
end

When(/^I enter my email address$/) do
  step 'I enter email_address into the email_text field'
  step 'I click continue'
end

When(/^I click continue$/) do
  click_button("Continue")
end

When(/^I click find address/) do
  click_button("Find address")
end

When(/^I select an address/) do
  find('#address-lookup').find(:xpath, 'option[2]').select_option
end

When(/^I select (.*) on the (.*) button$/) do | choice, button |
  find_by_id("#{button}-#{choice}").click
end

When(/^I click the back link$/) do
  click_link('Back')
end

When(/^I click the cant find address link$/) do
  click_link('I can\'t find my address in the list')
end

Then(/^I should see the (.*) error$/) do | type |
  expect(page).to have_content CONTENT["#{type}_error"]
end

Then(/^I should see the headers and my information in the summary:$/) do | table |
  table.rows_hash.each do | header, information |
    expect(page).to have_content CONTENT[header]
    cellContent = CONTENT[information]
    expect(page).to have_xpath "//td[@data-value=\"#{cellContent}\"]"
  end
end

When(/^I click change (.*) from the (.*) page$/) do | change, step |
  find(:xpath, "//a[@href='/#{step}/edit##{CONTENT[change]}']").click
end

Then(/^I should see (.*) on the page$/) do | field |
  expect(page).to have_content CONTENT[field]
end

When(/^I change (.*) to (.*)$/) do | field, text |
  step "I enter #{text} into the #{field} field"
end

Then(/^the hidden field disappears again$/) do
  # TODO: Reimplement this step. Currently it passes locally (with phantom or firefox) but not on Travis
  # expect(page).to_not have_selector('#example-toggled-text')
end

When(/^I click Confirm submission$/) do
  click_button('Confirm submission')
end

When(/^I click the first "Change" button$/) do
  find_by_id('about-radio-change').click
end

Then(/^I am taken to the confirmation page$/) do
  expect(page).to have_content CONTENT['confirmation_content']
end

When(/^I enter my country$/) do
  step 'I enter country_uk into the country_select field'
  step 'I click continue'
end

When(/^I enter my country uk$/) do
  step 'I enter country_uk into the country_select field'
  step 'I click continue'
end

When(/^I enter my country not uk$/) do
  step 'I enter country_not_uk into the country_select field'
  step 'I click continue'
end

When(/^I enter my postcode$/) do
  step 'I enter postcode into the postcode_code field'
  step 'I click continue'
end

When(/^I enter my postcode in Northern Ireland$/) do
  step 'I enter postcode_NI into the postcode_code field'
  step 'I click continue'
end

When(/^I enter my postcode not in MOJ$/) do
  step 'I enter postcode_not_in_MOJ into the postcode_code field'
  step 'I click continue'
end

When(/^I select my address$/) do
  step 'I select an address'
  step 'I click continue'
end

When(/^I enter my address$/) do
  step 'I enter address_entry into the address_textarea field'
  step 'I click continue'
end

When(/^I enter my NI address$/) do
  step 'I enter address_entry into the address_textarea field'
  step 'I click continue'
end

When(/^I cant find the address$/) do
  step 'I click the cant find address link'
end
