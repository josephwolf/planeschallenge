require 'plane.rb'

describe Spaceship do

	let(:spaceship) { Spaceship.new }
	let(:station) { double :spacestation, launch: :spaceship, dock: :spaceship}
	let(:weather) { double :weather, clear?: :false }

	it 'can be landed' do
		# let(:weather) { double :weather, :clear?: true }
		expect(spaceship.landed?).to be_true
	end

	it 'can be in flight' do
		# let(:weather) { double :weather, :clear? true }
		spaceship.takeoff_from!(station)
		expect(spaceship).not_to be_landed
	end

	it 'can land after takeoff' do
		# let(:weather) { double :weather, :clear? true }
		spaceship.takeoff_from!(station)
		spaceship.land_at!(station)
		expect(spaceship).to be_landed
	end

	it 'does not take off if weather is asteroids' do
		spaceship.weather = false
		expect(spaceship.takeoff_from!(station)).to eq 'not safe!'
	end 


end