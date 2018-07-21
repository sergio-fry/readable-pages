require 'spec_helper'

RSpec.describe 'Fetch article', type: :request do
  it 'returns an article details' do
    VCR.use_cassette :russia_wiki do
      get '/article?url=https://en.wikipedia.org/wiki/Russia'
    end
    expect(last_response).to be_ok
  end
end
