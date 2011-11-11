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

require 'singleton'

class To3e

	include Singleton

	def to_3e(number)
		if (number < 1000)
			return number.to_s
		else
			return to_3e_with_unit(number)
		end
	end
	
	def to_3e_with_unit(number)
		rescaled_number = number.to_f / 1000.to_f
		precision = calculate_precision(rescaled_number) 
		value = "%.#{precision}f" % rescaled_number 
		unit = 'k'
		return "#{value}#{unit}"
	end
	
	def calculate_precision(rescaled_number)
		if (rescaled_number < 9.995)
			return 2
		elsif (rescaled_number < 99.95)
			return 1
		else
			return 0
		end
	end

end

class Fixnum

	def to_3e
		To3e.instance.to_3e(self)
	end
	
end