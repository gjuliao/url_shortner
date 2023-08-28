require 'rails_helper'

RSpec.describe Link, type: :model do
  
    it 'always have a valid url' do
        link = Link.new(
            original_url: 'http://example.com/breakfast',
            lookup_code: '12345'
        )

        link.save
        expect(link.valid?).to be(true)
    end

    it 'always have a invalid if url is not formatted properly' do
        link = Link.new(
            original_url: 'asdfasdfasdfasdf',
            lookup_code: '12345'
        )

        link.save
        expect(link.valid?).to be(false)
    end

    it 'always have a url' do
        link = Link.new(
            original_url: 'http://example.com/breakfast',
            lookup_code: '12345'
        )

        expect(link.valid?).to be(true)
    end

    it 'always invalid it url doesnt exist' do
        link = Link.new(
            lookup_code: '12345'
        )

        expect(link.valid?).to be(false)
    end

    it 'always invalid it lookup_code doesnt exist' do
        link = Link.new(
            original_url: 'http://example.com/breakfast',
        )

        expect(link.valid?).to be(false)
    end

    it 'invalid if lookup_code already exists' do
        link_one = Link.new(
            original_url: 'http://example.com/breakfast',
            lookup_code: '12345'
        )

        link_one.save

        link_two = Link.new(
            original_url: 'http://example.com/breakfast',
            lookup_code: '12345'
        )

        expect(link_two.valid?).to be(false)
        
    end


end
