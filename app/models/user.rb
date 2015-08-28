class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def recommend_itemids
    begin
      body = SuggestGrid::RecommendItemsBody.new
      body.userid = id.to_s
      body.size = 3

      recommendations = SuggestGrid::RecommendationController.new.recommend_items(body, 'space', 'rating')
      puts 'recommendations'
      puts recommendations
      puts 'recommendations'
      recommendations['recommendations']['itemids']
    rescue
      puts $!
      []
    end
  end
end
