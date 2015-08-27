class Rating < ActiveRecord::Base
  before_save :create_action_for_suggestgrid

  def create_action_for_suggestgrid
    body = SuggestGrid::Action.new
    body.userid = userid.to_s
    body.itemid = itemid.to_s
    body.rating = rating

    $sg_action_controller.create_action(body, 'space', 'rating')
  end
end
