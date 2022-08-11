# frozen_string_literal: true

class HealthcheckController < Sinatra::Base
  def initialize(app = nil)
    super(app)
  end

  get '/healthcheck' do
    content_type :json

    { status: :ok }.to_json
  end
end
