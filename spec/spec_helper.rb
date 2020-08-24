require 'bundler/setup'
# require 'webmock/rspec'
require 'slack_app'

# WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # # Webmock slack
  # config.before(:each) do
  #   config = SlackApp::Configuration.config
  #   stub_request(:any, config.endpoint)
  #     .with(headers: { 'Authorization': "Bearer #{config.token}" })
  #     .to_return(status: 200, body: { 'ok': true })
  # end
end
