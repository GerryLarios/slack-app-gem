require_relative 'admin/apps'
require_relative 'admin/conversations'
require_relative 'admin/emoji'

module SlackApp
  module Methods
    module Admin
      include Apps
      include Conversations 
      include Emoji 
    end
  end
end
