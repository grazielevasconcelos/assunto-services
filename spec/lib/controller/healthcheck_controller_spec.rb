# frozen_string_literal: true

require 'spec_helper'

RSpec.describe HealthcheckController do
  include Rack::Test::Methods

  subject(:app) { described_class.new(nil) }

  let(:healthcheck) { get '/healthcheck' }

  context 'with valid params' do
    it 'returns valid' do
      healthcheck

      expect(last_response.ok?).to be(true)
    end

    it 'returns corrected content type' do
      healthcheck

      expect(last_response['Content-type']).to include('json')
    end

    it 'returns status' do
      healthcheck

      expect(last_response.body).to include('status')
    end
  end
end
