class Spaceship

	def initialize
		@grounded = true
	end

	def landed?
		@grounded
	end

	def takeoff_from!(station)
		if station.clear_weather?
			station.launch(self)
			@grounded = false
			return 'See you, space cowboy.'
		else
			return 'NOT SAFE TO LAUNCH.'
		end
	end

	def land_at!(station)
		if station.clear_weather?
			station.dock(self)
			@grounded = true
			return 'Welcome to #{station}!'
		else
			return 'NOT SAFE TO LAND.'
		end
	end

end