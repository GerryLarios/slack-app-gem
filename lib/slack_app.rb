require 'slack_app/version'
require 'slack_app/api'

module SlackApp
  def self.api
    SlackApp::API
  end

  def self.configure(&block)
    SlackApp::Configuration.configure(&block)
  end
end
