class WebPage
  def initialize(url, internet_gateway = InternetGateway.new)
    @url = url
    @internet_gateway = internet_gateway
  end

  def content
    @internet_gateway.read @url
  end
end
