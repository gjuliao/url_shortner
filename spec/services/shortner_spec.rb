require "rails_helper"


RSpec.describe Shortner do

    it 'shortens given url to 5 characters' do
        url = 'http://example.com'
        shortner = Shortner.new(url)
        expect(shortner.lookup_code.length).to eq (5)
    end

    it 'shortens given unique 5 characters url' do
        url = 'http://example.com/how-to-bake'
        shortner = Shortner.new(url)
        code_one = shortner.lookup_code

        url = 'http://example.com/bake-pizza'
        shortner = Shortner.new(url)
        code_two = shortner.lookup_code

        expect(code_two).not_to eq(code_one)
        
    end

    it 'generates Link with new unique code' do
        url = 'http://example.com/how-to-bakes'
        shortner = Shortner.new(url)
        link = shortner.generate_link
        expect(link.valid?).to be(true)
    end
    
end