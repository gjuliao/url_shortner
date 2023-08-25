require 'securerandom'

class Shortner

  attr_reader :url

  def initialize(url)
    @url = url
  end

  def generate_link
    Link.create(original_url: url, lookup_code: lookup_code)
  end


  def lookup_code
    SecureRandom.uuid[0..4]
  end
end