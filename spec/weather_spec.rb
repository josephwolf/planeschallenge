require 'weather.rb'

describe Weather do
	
	let(:weather) { Weather.new }

	it 'can be clear outside' do
		weather.force_clear!
		expect(weather.status).to be_true
	end

	it 'can be not clear outside' do
		weather.force_not_clear!
		expect(weather.status).not_to be_true
	end

	xit 'can be ranzomized!' do
		expect(weather.clear?).to be_i_dont_fucking_know
	end

		# this test is fucking up at random because
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