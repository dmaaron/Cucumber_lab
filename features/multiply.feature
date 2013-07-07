Feature: Multiplication
	In order to avoid mistakes
	As a math beginner
	I want to see the product of two numbers

@mult
	Scenario: Multiply two numbers
    Given I visit the calculator page for multiply
    And I fill in '5' for 'm_first'
    And I fill in '4' for 'm_second'
    And I click on 'Multiply' 
    Then the product should be '20'