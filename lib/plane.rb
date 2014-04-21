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
		else
			return 'not safe!'
		end
	end

	def land_at!(station)
		if station.clear_weather?
			station.dock(self)
			@grounded = true
		else
			return 'not safe!'
		end
	end

end