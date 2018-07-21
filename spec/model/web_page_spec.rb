require 'spec_helper'

RSpec.describe WebPage do
  class InternetGatewayStub
    def read(_url)
      'bar'
    end
  end

  let(:web_page) { WebPage.new 'http://example.com/foo', InternetGatewayStub.new }

  it 'should have content' do
    expect(web_page.content).to eq 'bar'
  end
end
