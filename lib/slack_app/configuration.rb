module SlackApp
  module Configuration
    DefaultConfig = Struct.new(:token, :endpoint) do
      def initialize
        self.token = nil
        self.endpoint = 'https://slack.com/api/'.freeze
      end
    end

    def self.configure
      @config ||= DefaultConfig.new
      yield(@config) if block_given?
      @config
    end

    def self.config
      @config || configure
    end
  end
end
