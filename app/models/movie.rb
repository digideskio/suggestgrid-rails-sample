class Movie < ActiveRecord::Base
  serialize :genres

  # send action to SuggestGrid
  def create_action(user)
    begin
      body = SuggestGrid::Action.new
      body.userid = user.id
      body.itemid = self.id
      SuggestGrid::ActionController.new.create_action(body, 'movie_space', 'movie')
    rescue Exception => e
      logger.error "Exception while sending action  #{e}"
    end
  end

  # this is behavioral recommendation special to given user
  def self.recommend(user, size = 3)
    begin
      body = SuggestGrid::RecommendItemsBody.new
      body.userid = user.id # recommend specific to given user
      body.size = size
      recommendations = SuggestGrid::RecommendationController.new.recommend_items(body, 'movie_space', 'movie')
      Movie.find(recommendations['recommendations']['itemids']) # fetch from db
    rescue Exception => e
      logger.error "Exception while getting recommendations #{e}"
      Movie.all.limit(size)
    end
  end

  # this is behavioral recommendation special to given user also takes into account related movie
  def recommend_similar(user, size = 3)
    begin
      body = SuggestGrid::RecommendItemsBody.new
      body.userid = user.id # recommend specific to given user
      body.size = size
      body.similar_itemid = self.id # recommend movie similar to this movie
      body.except = [self.id] # exclude this movie from recommendations
      recommendations = SuggestGrid::RecommendationController.new.recommend_items(body, 'movie_space', 'movie')
      Movie.find(recommendations['recommendations']['itemids']) # fetch from db
    rescue Exception => e
      logger.error "Exception while getting similar recommendations #{e}"
      Movie.all.limit(size)
    end
  end

  # this is behavioral similarity works without providing user
  def similar(size = 3)
    begin
      body = SuggestGrid::SimilarItemsBody.new
      body.size = size
      body.except = [self.id] # exclude this movie from similars
      similars = SuggestGrid::SimilarityController.new.get_similar_items(body, self.id , 'movie_space', 'movie')
      Movie.find(similars['similars']['itemids']) # fetch from db
    rescue Exception => e
      logger.error "Exception while getting similar items #{e}"
      Movie.all.limit(size)
    end
  end

end
