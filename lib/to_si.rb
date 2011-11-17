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

require 'singleton'

class ToSI

	include Singleton
	
	Units = ['k', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y']

	def to_si(number)
		if (number < 1000)
			return number.to_s
		else
			return to_si_with_unit(number)
		end
	end
	
	def to_si_with_unit(number)
		scale = 0
		rescaled_number = number.to_f
		until (scale >= Units.length || rescaled_number < 999.5) do
			rescaled_number = rescaled_number / 1000.to_f
			scale += 1
		end
		precision = calculate_precision(rescaled_number) 
		value = "%.#{precision}f" % rescaled_number 
		unit = Units[scale - 1]
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

class Integer

	def to_si
		ToSI.instance.to_si(self)
	end
	
end