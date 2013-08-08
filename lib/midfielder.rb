require "midfielder/version"
require 'celluloid/autostart'
require 'httparty'

module Midfielder
  class Client
    def fetch(urls)
      urls.inject({'results' => {}}) do |hash, url|
        hash['results'][url] = HttpClient.get(url)
        hash
      end
    end

    class HttpClient
      def self.get(url)
        Celluloid::Future.new { HTTParty.get(url) }
      end
    end
  end
end
