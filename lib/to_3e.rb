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

class Fixnum

	def to_3e
		if (self < 1000)
			return self.to_s
		else
			return self.to_3kilo
		end
	end
	
	def to_3kilo
		rescaled_self = self.to_f / 1000.to_f
		if (rescaled_self < 9.995)
			precision = 2
		elsif (rescaled_self < 99.95)
			precision = 1
		else
			precision = 0
		end
		value = "%.#{precision}f" % rescaled_self 
		unit = 'k'
		return "#{value}#{unit}"
	end

end