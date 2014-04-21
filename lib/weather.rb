class Weather
	
	def clear?
		@status = ([true] * 2 + [false] * 3).sample
	end

	def force_clear!
		@status = true
	end

	def force_not_clear!
		@status = false
	end

	def status
		@status
	end

end