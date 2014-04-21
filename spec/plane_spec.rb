require 'plane.rb'

describe Spaceship do

	let(:weather) { double true }
	let(:spaceship) { Spaceship.new }
	let(:station) { double :spacestation, launch: :spaceship, dock: :spaceship, clear_weather?: weather }

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


	it 'does not land if weather is asteroids' do
		station.stub(:clear_weather?){false}
		spaceship.land_at!(station)
		expect(spaceship.land_at!(station)).to eq 'NOT SAFE TO LAND.'
	end 

	it 'does not take off if weather is asteroids' do
		station.stub(:clear_weather?){false}
		spaceship.takeoff_from!(station)
		expect(spaceship.takeoff_from!(station)).to eq 'NOT SAFE TO LAUNCH.'
	end 


end