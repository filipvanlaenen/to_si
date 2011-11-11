#
# To_3e.
# Copyright © 2011 Filip van Laenen <f.a.vanlaenen@ieee.org>
#
# This file is part of to_3e.
#
# To_3e is free software: you can redistribute it and/or modify it under the terms of the GNU
# General Public License as published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
# 
# To_3e is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even
# the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
# Public License for more details.
# 
# You can find a copy of the GNU General Public License in /doc/gpl.txt
#

require 'to_3e'
require 'test/unit'

#
# Unit tests on To3e. The tests run against Integer, not directly on To3e.
#
class To3eUnitTest < Test::Unit::TestCase
	
	def test_must_round_0
		assert_equal '0', 0.to_3e
	end
	
	def test_must_round_999
		assert_equal '999', 999.to_3e
	end

	def test_must_round_1000_to_1_00k
		assert_equal '1.00k', 1000.to_3e
	end
	
	def test_must_round_9994_to_9_99k
		assert_equal '9.99k', 9994.to_3e
	end
	
	def test_must_round_9995_to_10_0k
		assert_equal '10.0k', 9995.to_3e
	end
	
	def test_must_round_99949_to_99_9k
		assert_equal '99.9k', 99949.to_3e
	end

	def test_must_round_99950_to_100k
		assert_equal '100k', 99950.to_3e
	end

	def test_must_round_999499_to_999k
		assert_equal '999k', 999499.to_3e
	end

	def test_must_round_999500_to_1_00M
		assert_equal '1.00M', 999500.to_3e
	end

	def test_must_round_9994999_to_9_99M
		assert_equal '9.99M', 9994999.to_3e
	end
	
	def test_must_round_9995000_to_10_0M
		assert_equal '10.0M', 9995000.to_3e
	end
	
	def test_must_round_99949999_to_99_9M
		assert_equal '99.9M', 99949999.to_3e
	end

	def test_must_round_99950000_to_100M
		assert_equal '100M', 99950000.to_3e
	end

	def test_must_round_999499999_to_999M
		assert_equal '999M', 999499999.to_3e
	end

	def test_must_round_999500000_to_1_00G
		assert_equal '1.00G', 999500000.to_3e
	end
	
	def test_must_round_999500000000_to_1_00T
		assert_equal '1.00T', 999500000000.to_3e
	end

	def test_must_round_999500000000000_to_1_00P
		assert_equal '1.00P', 999500000000000.to_3e
	end

	def test_must_round_999500000000000000_to_1_00E
		assert_equal '1.00E', 999500000000000000.to_3e
	end

	def test_must_round_999500000000000000000_to_1_00Z
		assert_equal '1.00Z', 999500000000000000000.to_3e
	end

	def test_must_round_999500000000000000000000_to_1_00Y
		assert_equal '1.00Y', 999500000000000000000000.to_3e
	end
end