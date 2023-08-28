require 'rails_helper'

RSpec.describe 'Link Redirect', type: :request do
    
    it 'new shortened url redirects to original url' do
        url = 'http://example.com'
        shortner = Shortner.new(url)
        link = shortner.generate_link

        get link.shortened_url

        expect(response).to redirect_to(link.original_url)
    end
end