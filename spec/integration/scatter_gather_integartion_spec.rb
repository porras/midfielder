require_relative '../../lib/midfielder'


describe Midfielder do
  it "fetches several URLS and return them in a hash" do
    urls = [
      "http://soundcloud.com",
      "http://vitorpellegrino.com"
    ]
    client = Midfielder::Client.new
    all_urls = client.fetch(urls)
    
    all_urls['results']['http://soundcloud.com'].should_not be_nil
    all_urls['results']['http://vitorpellegrino.com'].should_not be_nil
  end
end
