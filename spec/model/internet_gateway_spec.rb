require 'spec_helper'

RSpec.describe InternetGateway do
  it 'should read content by URL' do
    VCR.use_cassette('example.com') do
      internet_gateway = described_class.new
      content = internet_gateway.read('http://example.com')
      expect(content.size).to be > 0
    end
  end
end
