namespace :suggestgrid do
  desc "Checks if given space and type/types are exists"
  task initialize: :environment do
    begin
      # create StateController.
      state_controller = SuggestGrid::StateController.new
      space = Rails.configuration.suggestgrid_space
      type = 'view'

      # Check if the space exists, otherwise create it.
      unless state_controller.space_exists(space)['exists']
        state_controller.create_space(space)
      end

      # Check if the type exists, otherwise create it.
      unless state_controller.type_exists(space,type)['exists']
        state_controller.create_type(space,type)
      end

    rescue Exception => e
      Rails.logger.error "Cannot initialize SuggestGrid #{e}"
    end
  end
end
