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
# Unit tests on to_3e.
#
class To3eUnitTest < Test::Unit::TestCase
	
	def test_must_round_0
		assert_equal '0', 0.to_3e
	end
	
end