def changer(cents)
	change = {"quarters"=>0, "dimes"=>0, "nickels"=>0, "pennies"=>0}

	quarters = cents / 25
	change["quarters"]= quarters


	return change
end
