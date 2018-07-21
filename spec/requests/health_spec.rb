require 'spec_helper'

RSpec.describe 'Health ckeck request', type: :request do
  it 'says ok' do
    get '/health'
    expect(last_response).to be_ok
    expect(last_response.body).to eq 'ok'
  end
end
