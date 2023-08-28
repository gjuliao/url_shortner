require 'rails_helper'

RSpec.describe LinksController, type: :controller do

    it 'shows all available links in index' do
        link_one = Link.new(
            original_url: 'http://example.com/breakfast',
            lookup_code: '12345'
        )

        link_one.save

        link_two = Link.new(
            original_url: 'http://example.com/breakfast-two',
            lookup_code: '12346'
        )

        link_two.save

        get :index

        expect(assigns(:links)).to eq([link_one, link_two])
    end


    it 'can shorten link provided by user' do
        url = 'http://example.com/breakfast'
        request.env['HTTP_ACCEPT'] = 'text/javascript'

        post :create, params: { link: { original_url: url } }
        link = assigns(:link)
        expect(link.original_url).to eq(url)
        expect(link.valid?).to be(true)
        expect(link.lookup_code.length).to eq(5)
    end
    
end