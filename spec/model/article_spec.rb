require 'spec_helper'

RSpec.describe Article do
  let(:content) do
    <<-HTML
    <h1>Some Title</h1>
    <div>Content here</div>
    HTML
  end

  let(:article) { Article.new content }

  describe 'title' do
    subject { article.title }
    it { should eq 'Some Title' }
  end
end
