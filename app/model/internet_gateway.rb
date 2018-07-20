require 'open-uri'

class InternetGateway
  def read(url)
    open(url).read
  end
end
