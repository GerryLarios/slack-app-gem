RSpec.describe SlackApp do
  it 'has a version number' do
    expect(SlackApp::VERSION).not_to be nil
  end

  it 'sets default values' do
    config = SlackApp::Configuration.config
    expect(config.token).to eq(nil)
    expect(config.endpoint).to eq('https://slack.com/api/')
  end
  
  it 'sets config values' do
    token = 'xoxo-bot-token-ASDFGG'
    endpoint = 'https://api.slack.com/'

    SlackApp.configure do |config|
      config.token = token
      config.endpoint = endpoint
    end

    config = SlackApp::Configuration.config

    expect(config.token).to eq(token)
    expect(config.endpoint).to eq(endpoint)
  end
end
