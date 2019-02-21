require_relative './init'

run Rack::Cascade.new [Web, Api]
