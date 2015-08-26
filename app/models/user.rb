class User < ActiveRecord::Base
  validates_uniqueness_of :userid
end
