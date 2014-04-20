# require_relative 'weather.rb'

class Spaceship

	# include Weather

	def initialize(weather)
		@weather = weather
		@grounded = true
		puts "got weather from outside!"
	end

	def landed?
		@grounded
	end

	def takeoff_from!(station)
		if safe_to_take_off?
			station.launch(self)
			@grounded = false
		else
			return 'not safe!'
		end
	end

	def land_at!(station)
		station.dock
		@grounded = true
	end

	def safe_to_take_off?
		@weather.clear?
		puts "checked if safe"
	end

	# def weather
	# 	@weather
	# end
end