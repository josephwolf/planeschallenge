class Weather
	
	def clear?
		random
	end

	def spacey
		@clear = true
	end

	def asteroidy
		@clear = false
	end

	def random
		chances = [1,2,3,4,5]
		outcome = chances.sample
		if outcome <= 2
			asteroidy
		else
			spacey
		end
	end
end