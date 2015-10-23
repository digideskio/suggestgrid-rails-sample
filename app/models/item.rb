class Item < ActiveRecord::Base

  def similar_itemids
    begin
      body = SuggestGrid::SimilarItemsBody.new
      body.size = 3
      body.except = [id]

      similars = SuggestGrid::SimilarityController.new.get_similar_items(body, id , 'space', 'rating')
      similars['similars']['itemids']
    rescue
      puts 'Exception while getting similar items:'
      puts $!
      []
    end
  end
end
