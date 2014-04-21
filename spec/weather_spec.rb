require 'weather.rb'

describe Weather do
	
	let(:weather) { Weather.new }

	it 'can be clear outside' do
		srand(1)
		expect(weather.clear?).to be_true
	end

	it 'can be not clear outside' do
		srand(0)
		expect(weather.clear?).not_to be_true
	end

	# holy shit! it took some doing but I finally figured
	# it out! by using the srand function I can fix the
	# seed used by the sample function to get the same
	# results of clear? every time. it takes some trial and 
	# error to figure out what seed gets what but it works.

	# I could refactor the weather into the station because
	# it's basically just one line now, but I'll leave it to
	# show how it evolved.

end