require_relative 'methods'

module SlackApp
  class API
    class << self
      include Methods
    end
  end
end
