require 'spec_helper'

RSpec.describe ReadabilityGateway do
  let(:html) do
    <<-HTML
    <h1>Some Title</h1>
    Content here
    HTML
  end

  it 'parses html content' do
    readability_gateway = ReadabilityGateway.new
    doc = readability_gateway.parse html
    expect(doc.title).to eq 'Some Title'
  end
end
