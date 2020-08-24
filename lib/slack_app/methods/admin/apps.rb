module SlackApp
  module Methods
    module Admin
      module Apps
        METHOD_STR = 'admin.apps'
        def admin_apps_approve(args = {})
          # TODO: check params app_id, request_id 
          post(METHOD_STR + '.approve', args = {})
        end

        def admin_apps_restrict(args = {})
          # TODO: check params app_id, request_id 
          post(METHOD_STR + '.restrict', args)
        end

        def admin_apps_approved_list(args = {})
          # TODO: check params enterprise_id, team_id they can't be used together. 
          get(METHOD_STR + '.approved.list', args)
        end

        def admin_apps_requests_list(args = {})
          get(METHOD_STR + '.requests.list', args)
        end
        
        def admin_apps_restricted_list(args = {})
          # TODO: check params enterprise_id, team_id they can't be used together. 
          get(METHOD_STR + '.restricted.list', args)
        end
      end
    end
  end
end
