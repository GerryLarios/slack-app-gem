require_relative 'request'
require_relative 'methods/admin'

module SlackApp
  module Methods
    include Request

    include Admin
  end
end
