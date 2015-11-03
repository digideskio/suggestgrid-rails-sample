begin
# create StateController
state_controller = SuggestGrid::StateController.new

# check if space exists else create it
unless state_controller.space_exists('movie_space')['exists']
  state_controller.create_space('movie_space')
end

# check if type exists else create it
unless state_controller.type_exists('movie_space','view')['exists']
  state_controller.create_type('movie_space','view')
end

rescue Exception => e
  logger.error "Can not initialize SuggestGrid #{e}"
end
