require 'spec_helper'

RSpec.describe WebPage do
  class InternetGatewayStub
    def read(_url)
      'bar'
    end
  end

  let(:web_page) { WebPage.new 'http://example.com/foo', InternetGatewayStub.new }

  it 'reads content' do
    expect(web_page.content).to eq 'bar'
  end

  it 'generates article' do
    expect(web_page.article).to be_a Article
  end
end
