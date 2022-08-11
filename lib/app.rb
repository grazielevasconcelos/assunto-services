# frozen_string_literal: true

require 'sinatra/base'
require 'json'

require_relative 'controller/healthcheck_controller'

class Assunto < Sinatra::Base
  use HealthcheckController
end
