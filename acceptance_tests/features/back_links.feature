@back_link
Feature: The back link is correct as I move through the form

  @how @people
  Scenario: Back link on the how page is people
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click on not_received
    Then I am taken to the type page of the form
    When I click on marriage
    Then I am taken to the people page of the form
    When I enter both names on the certificate
    Then I am taken to the how page of the form
    When I click the back link
    Then I am taken to the people page of the form

  @how @person
  Scenario: Back link on the how page is person
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click on not_received
    Then I am taken to the type page of the form
    When I click on birth
    Then I am taken to the person page of the form
    When I fill in the name on the certificate
    Then I am taken to the how page of the form
    When I click the back link
    Then I am taken to the person page of the form

  @name @when
  Scenario: Back link on the name page is when
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click on not_received
    Then I am taken to the type page of the form
    When I click on birth
    Then I am taken to the person page of the form
    When I fill in the name on the certificate
    Then I am taken to the how page of the form
    When I click on online
    Then I am taken to the which page of the form
    When I choose standard and enter my order number
    Then I am taken to the when page of the form
    When I enter a date
    Then I am taken to the name page of the form
    When I click the back link
    Then I am taken to the when page of the form

  @name @details
  Scenario: Back link on the name page is details
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click on complaint
    Then I am taken to the details page of the form
    When I choose no for existing and no for previous complaint
    Then I am taken to the name page of the form
    When I click the back link
    Then I am taken to the details page of the form

  @type @details
  Scenario: Back link on the type page is details
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click on other
    Then I am taken to the details page of the form
    When I choose yes for existing and yes for previous complaint
    Then I am taken to the type page of the form
    When I click the back link
    Then I am taken to the details page of the form

  @type @about
  Scenario: Back link on the type page is about
    Given I am on the start page for the form
    Then I can see the questions for the about page of the form
    When I click on not_received
    Then I am taken to the type page of the form
    When I click the back link
    Then I am taken to the about page of the form