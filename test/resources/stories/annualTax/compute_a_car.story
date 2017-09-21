Meta:
@tag component:Car Api

Narrative:
As a driver
I want to compute the tax for a Motorcycle
So that I can know the tax I need to pay

Scenario: Registration Date before 2 March 2001
Given a Car register <registerDate> with an engine size: <engine>
When I compute Tax
Then the tax result is <tax> GBP
Examples:
|registerDate|engine|tax|
|2001-03-01|1550|110|
|2001-02-01|1400|110|
|2001-03-01|2000|165|
|2001-01-01|2500|165|


Scenario: Registration Date after 2 March 2001
Given a Car register <registerDate> with co2: <co2>
When I compute Tax
Then the tax result is <tax> GBP
Examples:
|registerDate|Co2|tax|
|2001-05-01|0|65|
|2002-05-01|100|65|
|2002-05-01|101|75|
|2002-05-01|120|75|
|2002-05-01|121|105|
|2005-05-01|150|105|
|2002-05-01|151|125|
|2002-05-01|165|125|
|2007-05-01|166|145|
|2012-05-01|185|145|
|2002-05-01|185|160|
|2017-05-01|200|160|




