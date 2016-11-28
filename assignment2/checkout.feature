Feature: Scan item in checkout

	The checkout will keep track of total cost. As an item is 
	scanned in it's price will be added to the running total.
	It takes two inputs: 
	 - The prices of available items
	 - The notification of items as they are scanned

Background:
	Given a banana costs $0.40
	And   an apple costs $0.25
	
Scenario Outline: Scanning fruit
	Given I have <banana_count> bananas
	And   I have <apple_count> apples
	When  I checkout
	Then  the total price should be <total_price>
	
	Examples:
		|banana_count |apple_count | total_price |
		|            1|           0|        $0.40|
		|            0|           1|        $0.25|
		|            1|           1|        $0.65|
		|            0|           0|        $0.00|