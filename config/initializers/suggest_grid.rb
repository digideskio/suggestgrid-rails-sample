sg_uri = ENV['SUGGESTGRID_URL'] || 'your-connection-url'

# Initialize SuggestGrid client
::SuggestGridClient = SuggestGrid::SuggestGridClient.new sg_uri
