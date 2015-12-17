@change_answers
Feature: I am able to change my answers and correctly navigate through the form

  Scenario: Change details text but not the path through the form
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click complaint and then continue
    Then I am taken to the details page of the form
    When I choose no for existing and no for previous complaint
    Then I am taken to the name page of the form
    When I enter my full name
    Then I am taken to the email page of the form
    When I enter my email address
    Then I am taken to the post page of the form
    When I fill in my address
    Then I am taken to the confirm page of the form
    Then I should see the headers and my information in the summary:
      |  table_not_received         |  complaint_summary  |
      |  table_details              |  free_text          |
      |  table_existing             |  no_summary         |
      |  table_previous             |  no_summary         |
      |  table_name                 |  full_name          |
      |  table_post                 |  address_summary    |
    When I click change details_text from the details page
    Then I am taken to the details page of the form
    When I change details_text to alt_text
    When I click continue
    Then I am taken to the confirm page of the form
    Then I should see the headers and my information in the summary:
      |  table_not_received         |  complaint_summary  |
      |  table_details              |  alt_text          |
      |  table_existing             |  no_summary         |
      |  table_previous             |  no_summary         |
      |  table_name                 |  full_name          |
      |  table_post                 |  address_summary    |

  Scenario: Happy path through details, then back through type
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click complaint and then continue
    Then I am taken to the details page of the form
    When I choose no for existing and no for previous complaint
    Then I am taken to the name page of the form
    When I enter my full name
    Then I am taken to the email page of the form
    When I enter my email address
    Then I am taken to the post page of the form
    When I fill in my address
    Then I am taken to the confirm page of the form
    Then I should see the headers and my information in the summary:
      |  table_not_received         |  complaint_summary  |
      |  table_details              |  free_text          |
      |  table_existing             |  no_summary         |
      |  table_previous             |  no_summary         |
      |  table_name                 |  full_name          |
      |  table_post                 |  address_summary    |
    When I click change existing from the details page
    Then I am taken to the details page of the form
    When I click on existing_radio_yes
    When I click continue
    Then I am taken to the type page of the form
    When I click marriage and then continue
    Then I am taken to the people page of the form
    When I enter both names on the certificate
    Then I am taken to the how page of the form
    When I click on online
    And I enter col_number into the online_text field
    When I click continue
    Then I am taken to the which page of the form
    When I choose standard and enter my order number
    Then I am taken to the when page of the form
    When I enter a date
    Then I am taken to the name page of the form
    Then I should see full_name on the page
    When I click continue
    Then I am taken to the email page of the form
    Then I should see email_address on the page
    When I click continue
    Then I should see address_summary on the page
    When I click continue
    Then I am taken to the confirm page of the form
    Then I should see the headers and my information in the summary:
      |  table_not_received         |  complaint_summary  |
      |  table_details              |  free_text          |
      |  table_existing             |  yes_summary        |
      |  table_previous             |  no_summary         |
      |  table_type                 |  marriage_summary   |
      |  table_person_one           |  full_name          |
      |  table_person_two           |  first_alt_name     |
      |  table_how                  |  online_summary     |
      |  table_online_toggle_text   |  col_number         |
      |  table_which                |  standard_summary   |
      |  table_order_number         |  order_no           |
      |  table_when                 |  date_summary       |
      |  table_name                 |  full_name          |
      |  table_post                 |  address_summary    |
