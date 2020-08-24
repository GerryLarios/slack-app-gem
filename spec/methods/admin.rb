RSpec.describe SlackApp do
  context 'admin.apps' do
    it 'approve' do
      response = SlackApp.api.admin_apps_approve
      expect(response['ok']).to eq(true)
    end
    
    # it 'restrict' do
    #   response = SlackApp.api.admin_apps_restrict
    #   puts response 
    #   expect(response['ok']).to eq(true)
    # end
    
    # it 'approved.list' do
    #   response = SlackApp.api.admin_apps_approved_list
    #   puts response
    #   expect(response['ok']).to eq(true)
    # end
    
    # it 'requests.list' do
    #   response = SlackApp.api.admin_apps_requests_list
    #   puts response
    #   expect(response['ok']).to eq(true)
    # end

    # it 'restricted.list' do
    #   response = SlackApp.api.admin_apps_restricted_list
    #   puts response
    #   expect(response['ok']).to eq(true)
    # end
  end
end
