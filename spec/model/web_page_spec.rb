require 'spec_helper'

RSpec.describe WebPage do
  let(:web_page) { WebPage.new 'http://example.com/foo' }

  it 'should have content' do
    expect(web_page.content).to eq 'bar'
  end
end
