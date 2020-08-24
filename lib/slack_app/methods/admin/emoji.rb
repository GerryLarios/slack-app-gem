module SlackApp
  module Methods
    module Admin
      module Emoji 
        METHOD_STR = 'admin.emoji'
        def admin_emoji_add(args = {})
          # TODO: check params name, url
          get(METHOD_STR + '.add', args)
        end

        def admin_emoji_add_alias(args = {})
          # TODO: check params alias_for, name 
          get(METHOD_STR + '.addAlias', args)
        end

        def admin_emoji_list(args = {})
          get(METHOD_STR + '.list', args)
        end

        def admin_emoji_remove(args = {})
          # TODO: check params name
          get(METHOD_STR + '.remove', args)
        end
        
        def admin_emoji_rename(args = {})
          # TODO: check params name, new_name
          get(METHOD_STR + '.rename', args)
        end
      end
    end
  end
end
