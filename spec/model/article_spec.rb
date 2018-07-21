require 'spec_helper'

RSpec.describe Article do
  let(:web_page) { WebPage.new 'https://en.wikipedia.org/wiki/Russia' }
  let(:article) { Article.new web_page }

  it 'guess title and pictures' do
    VCR.use_cassette :russia_wiki do
      expect(article.title).to eq 'Russia - Wikipedia'
      expect(article.images.size).to be > 0
    end
  end
end
