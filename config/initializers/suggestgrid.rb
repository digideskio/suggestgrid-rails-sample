# Initialize SuggestGrid client
sg_uri = URI(ENV['SUGGESTGRID_URL'] || 'your-connection-url')
SuggestGrid::Configuration.basic_auth_user_name = sg_uri.user
SuggestGrid::Configuration.basic_auth_password = sg_uri.password
SuggestGrid::Configuration.BASE_URI = "#{sg_uri.scheme}://#{sg_uri.host}:#{sg_uri.port}"
