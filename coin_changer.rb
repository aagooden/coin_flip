def changer(cents)
	change = {"quarters"=>0, "dimes"=>0, "nickels"=>0, "pennies"=>0}

	quarters = cents / 25
	change["quarters"]= quarters
	cents = cents%25
	dimes = cents / 10
	change["dimes"]= dimes



	return change
end
