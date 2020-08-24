module SlackApp
  module Methods
    module Admin
      module Conversations
        METHOD_STR = 'admin.conversations'
        def admin_conversations_restrict_access_add_group(args = {})
          # TODO: check params channel_id, group_id
          get(METHOD_STR + '.restrictAccess.addGroup', args)
        end

        def admin_conversations_restrict_access_list_groups(args = {})
          # TODO: check params channel_id
          get(METHOD_STR + '.restrictAccess.listGroups', args)
        end

        def admin_conversations_restrict_access_remove_group(args = {})
          # TODO: check params channel_id, group_id, team_id
          get(METHOD_STR + '.restrictAccess.removeGroup', args)
        end

        def admin_conversations_requests_list(args = {})
          # TODO: check params channel_id
          post(METHOD_STR + '.setTeams', args)
        end
      end
    end
  end
end
