require 'rails_helper'

RSpec.describe LinksController, type: :controller do

    it 'assigns links' do
        link_one = Link.new(
            original_url: 'http://example.com/breakfast',
            lookup_code: '12345'
        )

        link_one.save

        link_two = Link.new(
            original_url: 'http://example.com/breakfast',
            lookup_code: '12345'
        )

        link_two.save

        get :index

        expect(assigns(:links)).to eq([link_one, link_two])
    end
    
end