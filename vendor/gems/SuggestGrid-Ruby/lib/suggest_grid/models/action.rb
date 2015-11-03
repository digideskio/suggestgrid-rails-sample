# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 11/03/2015

module SuggestGrid
  class Action

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :userid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :itemid

    # TODO: Write general description for this method
    # @return [Numeric]
    attr_accessor :rating

    
    def method_missing (method_name)
      puts "there's no method called '#{method_name}'"
    end

    # Creates JSON of the curent object  
    def to_json
      hash = self.key_map()
      hash.to_json
    end

    # Defines the key map for json serialization  
    def key_map
      hash = {}
      hash['userid'] = self.userid
      hash['itemid'] = self.itemid
      hash['rating'] = self.rating
      hash
    end

  end
end