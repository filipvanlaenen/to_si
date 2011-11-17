#
# To_SI.
# Copyright © 2011 Filip van Laenen <f.a.vanlaenen@ieee.org>
#
# This file is part of To_SI.
#
# To_SI is free software: you can redistribute it and/or modify it under the terms of the GNU
# General Public License as published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
# 
# To_SI is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
# Public License for more details.
# 
# You can find a copy of the GNU General Public License in /doc/gpl.txt
#

require 'to_si'
require 'test/unit'

#
# Unit tests on ToSI. The tests run against Integer, not directly on ToSI.
#
class ToSIUnitTest < Test::Unit::TestCase
	
	def test_must_round_0
		assert_equal '0', 0.to_si
	end
	
	def test_must_round_999
		assert_equal '999', 999.to_si
	end

	def test_must_round_1_000_to_1_00k
		assert_equal '1.00k', 1_000.to_si
	end
	
	def test_must_round_9_994_to_9_99k
		assert_equal '9.99k', 9_994.to_si
	end
	
	def test_must_round_9_995_to_10_0k
		assert_equal '10.0k', 9_995.to_si
	end
	
	def test_must_round_99_949_to_99_9k
		assert_equal '99.9k', 99_949.to_si
	end

	def test_must_round_99_950_to_100k
		assert_equal '100k', 99_950.to_si
	end

	def test_must_round_999499_to_999k
		assert_equal '999k', 999499.to_si
	end

	def test_must_round_999_500_to_1_00M
		assert_equal '1.00M', 999_500.to_si
	end

	def test_must_round_9_994_999_to_9_99M
		assert_equal '9.99M', 9_994_999.to_si
	end
	
	def test_must_round_9_995_000_to_10_0M
		assert_equal '10.0M', 9_995_000.to_si
	end
	
	def test_must_round_99_949_999_to_99_9M
		assert_equal '99.9M', 99_949_999.to_si
	end

	def test_must_round_99_950_000_to_100M
		assert_equal '100M', 99_950_000.to_si
	end

	def test_must_round_999_499_999_to_999M
		assert_equal '999M', 999_499_999.to_si
	end

	def test_must_round_999_500_000_to_1_00G
		assert_equal '1.00G', 999_500_000.to_si
	end
	
	def test_must_round_999_500_000_000_to_1_00T
		assert_equal '1.00T', 999_500_000_000.to_si
	end

	def test_must_round_999_500_000_000_000_to_1_00P
		assert_equal '1.00P', 999_500_000_000_000.to_si
	end

	def test_must_round_999_500_000_000_000_000_to_1_00E
		assert_equal '1.00E', 999_500_000_000_000_000.to_si
	end

	def test_must_round_999_500_000_000_000_000_000_to_1_00Z
		assert_equal '1.00Z', 999_500_000_000_000_000_000.to_si
	end

	def test_must_round_999_500_000_000_000_000_000_000_to_1_00Y
		assert_equal '1.00Y', 999_500_000_000_000_000_000_000.to_si
	end

	def test_must_round_1_000_000_000_000_000_000_000_000_000_to_1000Y
		assert_equal '1000Y', 1_000_000_000_000_000_000_000_000_000.to_si
	end
end