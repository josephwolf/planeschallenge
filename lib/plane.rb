class Spaceship

	def initialize
		@grounded = true
	end

	def landed?
		@grounded
	end

	def takeoff!(station)
		station.launch
		@grounded = false
	end

	def land_at!(station)
		station.dock
		@grounded = true
	end

end