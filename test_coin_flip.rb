require "minitest/autorun"
require_relative "coin_flip.rb"

class Coin_flip_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

end