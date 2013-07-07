Feature: Subtraction
	In order to avoid mistakes
	As a math beginner
	I want to see the difference of two numbers

@sub
	Scenario: Subtract two numbers
    Given I visit the calculator page for subtract
    And I fill in '50' for 's_first'
    And I fill in '40' for 's_second'
    And I click on 'Subtract' 
    Then the difference should be '10'

@sub
	Scenario: Subtract one number
		Given I visit the calculator page for subtract
		And I fill in '50' for 's_first'
		And I fill in nothing for 's_second'
		And I click on 'Subtract'
		Then the difference should be '50'

@sub
	Scenario: Subtract a bigger number from a smaller one
		Given I visit the calculator page for subtract
			And I fill in '1' for 's_first'
			And I fill in '2' for 's_second'
			And I click on 'Subtract'
			Then the difference should be '-1'