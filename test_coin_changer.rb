require "minitest/autorun"
require_relative "coin_changer.rb"

class Coin_changer_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_hash_return
		cents = 50
		assert_equal(Hash, changer(cents).class)
	end

	def test_hash_returned_with_1_quarter
		cents = 25
		assert_equal({"quarters"=>1}, changer(cents))
	end

	def test_hash_returned_with_1_dime
		cents = 10
		assert_equal({"dimes"=>1}, changer(cents))
	end

	def test_hash_returned_with_1_nickel
		cents = 5
		assert_equal({"nickels"=>1}, changer(cents))
	end

	def test_hash_returned_with_1_penny
		cents = 1
		assert_equal({"pennies"=>1}, changer(cents))
	end

	def test_hash_returned_with_1quarter_1dime_1nickel_1penny_from_41cents
		cents = 41
		assert_equal({"quarters"=>1, "dimes"=>1, "nickels"=>1, "pennies"=>1}, changer(cents))
	end


	def test_hash_returned_with_2quarters_1penny
		cents = 51
		assert_equal({"quarters"=>2,"pennies"=>1}, changer(cents))
	end

	def test_change_singular_returns_hash
		change = {"quarters"=>1, "dimes"=>1, "nickels"=>1, "pennies"=>1}
		assert_equal(Hash, change_singular(change).class)
	end

	def test_hash_keys_singular_if_only_one_coin
		change = {"quarters"=>1, "dimes"=>1, "nickels"=>1, "pennies"=>1}
		assert_equal({"quarter"=>1, "dime"=>1, "nickel"=>1, "penny"=>1}, change_singular(change))
	end

	def test_functions_working_together_to_produce_correct_output_69cents
		cents = 69
		temp_change = changer(cents)
		assert_equal({"quarters"=>2, "dime"=>1, "nickel"=>1, "pennies"=>4}, change_singular(temp_change))
	end

	def test_functions_working_together_to_produce_correct_output_89cents
		cents = 89
		temp_change = changer(cents)
		assert_equal({"quarters"=>3, "dime"=>1, "pennies"=>4}, change_singular(temp_change))
	end	

	def test_functions_working_together_to_produce_correct_output_0cents
		cents = 0
		temp_change = changer(cents)
		assert_equal({}, change_singular(temp_change))
	end	

	def test_functions_working_together_to_produce_correct_output_48cents
		cents = 48
		temp_change = changer(cents)
		assert_equal({"quarter"=>1, "dimes"=>2, "pennies"=>3}, change_singular(temp_change))
	end	
end