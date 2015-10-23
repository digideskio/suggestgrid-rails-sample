class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def recommend_itemids(itemid)
    begin
      body = SuggestGrid::RecommendItemsBody.new
      body.userid = id.to_s
      body.size = 3
      body.similar_itemid = itemid.to_s
      body.except = [itemid.to_s]

      recommendations = SuggestGrid::RecommendationController.new.recommend_items(body, 'space', 'rating')
      recommendations['recommendations']['itemids']
    rescue
      puts 'Exception while getting recommendations:'
      puts $!
      []
    end
  end
end
