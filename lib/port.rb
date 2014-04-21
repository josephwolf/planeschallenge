class Spacestation

	def initialize(weather)
		@weather = weather
		@spaceships ||= []
	end

	def spaceships
		@spaceships
	end

	def dock(ship)
		spaceships << ship
	end

	def launch(ship)
		spaceships.delete(ship)
	end

	def clear_weather?
		@weather.clear?
	end

end