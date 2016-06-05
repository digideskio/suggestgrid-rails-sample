class Movie < ActiveRecord::Base
  serialize :genres

  # metadata callbacks, you can send movie metadata to SuggestGrid and
  # use this information to filter recommendation results

  # send action to SuggestGrid
  def create_action(user)
    begin
      SuggestGridClient.action.create_action(SuggestGrid::Action.new(user.id, self.id), 'view')
    rescue Exception => e
      logger.error "Exception while sending action  #{e}"
    end
  end

  # this is behavioral recommendation special to given user
  def self.recommend(user, size = 3)
    begin
      items_response = SuggestGridClient.recommendation.recommend_items({user_id: user.id, size: size}, 'view')
      Movie.find(items_response.items.collect { |item| item[:id] }) # fetch from db
    rescue Exception => e
      logger.error "Exception while getting recommendations #{e}"
      Movie.all.limit(size)
    end
  end

  # this is behavioral recommendation special to given user also takes into account related movie
  def recommend_similar(user, size = 3)
    begin
      items_response = SuggestGridClient.recommendation.recommend_items({user_id: user.id, size: size, similar_itemid: self.id}, 'view')
      Movie.find(items_response.items.collect { |item| item[:id] }) # fetch from db
    rescue Exception => e
      logger.error "Exception while getting similar recommendations #{e}"
      Movie.all.limit(size)
    end
  end

  # this is behavioral similarity works without providing user
  def similar(size = 3)
    begin
      similarity_response = SuggestGridClient.similarity.get_similar_items({size: size, except: self.id}, self.id, 'view')
      Movie.find(similarity_response.items.collect { |item| item[:id] }) # fetch from db
    rescue Exception => e
      logger.error "Exception while getting similar items #{e}"
      Movie.all.limit(size)
    end
  end

end
