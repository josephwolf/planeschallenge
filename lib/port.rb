class Spacestation

	def initialize
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

end