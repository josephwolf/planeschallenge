require 'plane.rb'

describe Spaceship do

	let(:weatherdouble) { double :weather, clear?: :false }
	# allow(weather).to receive(:clear?) { false }
	# weatherdouble = double()
	# let(:weatherdouble) { :false }
	let(:station) { double :spacestation, launch: :spaceship, dock: :spaceship}
	let(:spaceship) { Spaceship.new(weatherdouble) }

	xit 'can be landed' do
		# let(:weather) { double :weather, :clear?: true }
		expect(spaceship.landed?).to be_true
	end

	xit 'can be in flight' do
		# let(:weather) { double :weather, :clear? true }
		spaceship.takeoff_from!(station)
		expect(spaceship).not_to be_landed
	end

	xit 'can land after takeoff' do
		# let(:weather) { double :weather, :clear? true }
		spaceship.takeoff_from!(station)
		spaceship.land_at!(station)
		expect(spaceship).to be_landed
	end

	it 'does not take off if weather is asteroids' do
		expect(spaceship.takeoff_from!(station)).to eq 'not safe!'
	end 


end