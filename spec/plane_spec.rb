require 'plane.rb'

describe Spaceship do

	let(:spaceship) { Spaceship.new }
	let(:station) { double :spacestation, launch: :spaceship, dock: :spaceship}

	# class :station.to_s.capitalize
	# 	def launch
	# 		:spaceship
	# 	end

	# 	def dock
	# 		:spaceship
	# 	end
	# end

	# station = Station.new


	it 'can be landed' do
		expect(spaceship.landed?).to be_true
	end

	it 'can be in flight' do
		spaceship.takeoff!(station)
		expect(spaceship).not_to be_landed
	end

	it 'can land after takeoff' do
		spaceship.takeoff!(station)
		spaceship.land_at!(station)
		expect(spaceship).to be_landed
	end

end