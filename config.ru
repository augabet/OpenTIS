# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment', __FILE__)


# use Rack::Deflater
# use Prometheus::Client::Rack::Collector
# use Prometheus::Client::Rack::Exporter

run Rails.application




# run ->(env) { [200, {'Content-Type' => 'text/html'}, ['OK']] }	