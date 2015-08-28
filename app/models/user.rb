class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def recommend_itemids
    body = SuggestGrid::RecommendItemsBody.new
    body.userid = id.to_s
    body.size = $recommendation_size

    recommendations = $sg_recommendation_controller.create_recommend_items(body, $space, "rating")
    puts "recommendations: "
    puts recommendations
    recommendations["recommendations"]["itemids"]
  end
end
