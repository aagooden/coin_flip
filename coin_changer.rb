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

def change_singular(change)
	singular_change = {}
	change.each do |key,value| 

			if value == 1 && key == "pennies"
				new_key = "penney"
			elsif value == 1
				new_key = key.delete("s")
			else
				new_key = key
			end

		singular_change[new_key] = value
	end
	return singular_change 

end
