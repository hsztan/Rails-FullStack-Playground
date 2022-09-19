# frozen_string_literal: true

require 'httparty'

class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @service = service
    @page = page
  end
end
