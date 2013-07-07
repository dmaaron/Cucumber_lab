Feature: Division
	In order to avoid mistakes
	As a math beginner
	I want to see the result of dividing two numbers

@div
	Scenario: Divide two numbers
		Given I visit the calculator page for divide
		And I fill in '8' for 'd_first'
		And I fill in '4' for 'd_second'
		And I click on 'Divide'
		Then the answer should be '2'

		
	Scenario: Divide one number by zero

	Scenario: Divide a smaller number by a larger one