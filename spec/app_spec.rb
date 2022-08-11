# frozen_string_literal: true

require 'spec_helper'

# rubocop:disable RSpec/FilePath
RSpec.describe Assunto do
  # rubocop:enable RSpec/FilePath
  include Rack::Test::Methods

  def app
    Assunto
  end

  it 'returns valid' do
    get '/healthcheck'

    expect(last_response.ok?).to be(true)
  end

  it 'returns corrected content type' do
    get '/healthcheck'

    expect(last_response['Content-type']).to include('json')
  end

  it 'returns status' do
    get '/healthcheck'

    expect(last_response.body).to include('status')
  end
end
