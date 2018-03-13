def changer(cents)
	change = {"quarters"=>0, "dimes"=>0, "nickels"=>0, "pennies"=>0}

	quarters = cents / 25
	change["quarters"]= quarters
	cents = cents - (quarters * 25)
	dimes = cents / 10
	change["dimes"]= dimes
	cents = cents - (dimes * 10)
	nickels = cents / 5
	change["nickels"]= nickels
	cents = cents - (nickels * 5)
	change["pennies"] = cents




	return change
end
