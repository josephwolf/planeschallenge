require 'plane.rb'

describe Spaceship do

	let(:weather) { double true }
	let(:station) { double :spacestation, launch: :spaceship, dock: :spaceship, clear_weather?: weather }
	let(:spaceship) { Spaceship.new }

	it 'can be landed' do
		expect(spaceship.landed?).to be_true
	end

	it 'can be in flight' do
		spaceship.takeoff_from!(station)
		expect(spaceship).not_to be_landed
	end

	it 'can land after takeoff' do
		spaceship.takeoff_from!(station)
		spaceship.land_at!(station)
		expect(spaceship).to be_landed
	end

		# let(:station) { double :spacestation, launch: :spaceship, dock: :spaceship, clear_weather?: weatherdouble }

	it 'does not take off if weather is asteroids' do
		expect(spaceship.takeoff_from!(station)).to eq 'not safe!'
		let(:weatherdouble) { double false }
	end 


end