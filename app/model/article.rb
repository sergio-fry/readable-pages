require 'readability'
require 'open-uri'

class Article
  def initialize(web_page)
    @web_page = web_page
  end

  def title
    document.title
  end

  def images
    document.images
  end

  private

  def document
    @document = Readability::Document.new(@web_page.content)
  end
end
