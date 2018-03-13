require "minitest/autorun"
require_relative "coin_changer.rb"

class Coin_flip_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_hash_return
		cents = 50
		assert_equal(Hash, changer(cents).class)
	end

	def test_hash_returned_with_coin_keys_and_values_zero
		cents = 50
		assert_equal(["quarters", "dimes", "nickels", "pennies"], changer(cents).keys)
	end

	def test_hash_returned_with_1_quarter
		cents = 25
		assert_equal({"quarters"=>1, "dimes"=>0, "nickels"=>0, "pennies"=>0}, changer(cents))
	end

	def test_hash_returned_with_1_dime
		cents = 10
		assert_equal({"quarters"=>0, "dimes"=>1, "nickels"=>0, "pennies"=>0}, changer(cents))
	end
end