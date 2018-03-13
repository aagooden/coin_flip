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


end