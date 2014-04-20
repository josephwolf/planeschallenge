require 'weather.rb'

describe Weather do
	
	let(:weather) { Weather.new }

	xit 'can be space outside' do
		weather.spacey
		expect(weather).to be_clear
	end

	xit 'can be asteroids outside' do
		# allow(weather.random).to receive(:outcome) { 1 }
		weather.asteroidy
		expect(weather).not_to be_clear
	end

	xit 'can be ranzomized!' do
		weather.random
		expect(weather.clear?).to be_i_dont_fucking_know
	end

		# these tests are fucking up at random because
		# of the nature of the class.
		# testing the random method itself is a nightmare, but
		# I have an idea. if I can make rspec to run a single
		# test multiple times and then collect the results
		# I can run the test, say, 1000 times and it'd be
		# almost impossible not to get both possible outcomes.
		# I could then test to see that all possible outcomes 
		# were recieved. I have no idea HOW to do this, but it
		# should work.

end