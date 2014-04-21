require 'port.rb'

describe Spacestation do

	let(:spaceship) { double :spaceship }
	let(:weatherdouble) { double :weather, clear?: true }
	let(:spacestation) { Spacestation.new(weatherdouble) }

	it 'starts with no spaceships' do
		expect(spacestation.spaceships).to eq []
	end

	it 'can contain spaceships' do
		spacestation.dock(spaceship)
		expect(spacestation.spaceships).not_to eq []
	end

	it 'can release spaceship' do
		spacestation.dock(spaceship)
		spacestation.launch(spaceship)
		expect(spacestation.spaceships).to eq []
	end

	it 'has weather when an instance is called' do
		expect(spacestation.clear_weather?).to eq true
	end

end