require 'rspec'
require 'word_frequency'

describe ('String#word_frequency') do
	it('takes a string of the same word, and then a matching singular word, and returns the word frequency value') do
		expect(("lizzie").word_frequency("lizzie")).to(eq(1))
	end

	it('takes a string, and then a matching singular word, and returns the word frequency value from the original string') do
		expect(("I went to the store store store store").word_frequency("store")).to(eq(4))
	end

	it('takes a string with both upcase and lowercase letters and still returns the frequency if the words match') do
		expect(("I went to the STORE store STORE store").word_frequency("store")).to(eq(4))
	end

	it('takes a string with lowercase and a chosen word with uppercase and still returns the frequency if the words match') do
		expect(("I went to the store store store store").word_frequency("STORE")).to(eq(4))
	end
end