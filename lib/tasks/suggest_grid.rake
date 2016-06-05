namespace :suggestgrid do
  desc 'Checks if given space and type/types are exists'
  task initialize: :environment do
    begin
      SuggestGridClient.type.get_type('view')
      puts "SuggestGrid type named 'view' already exists, skipping creation."
    rescue SuggestGrid::APIException => e
      SuggestGridClient.type.create_type('view')
      puts "SuggestGrid type named 'view' is created."
    end
  end
end
