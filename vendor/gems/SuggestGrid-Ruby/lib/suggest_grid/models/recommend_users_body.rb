# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 11/03/2015

module SuggestGrid
  class RecommendUsersBody

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :itemid

    # TODO: Write general description for this method
    # @return [Array<String>]
    attr_accessor :itemids

    # TODO: Write general description for this method
    # @return [mixed]
    attr_accessor :filter

    # TODO: Write general description for this method
    # @return [Numeric]
    attr_accessor :size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :similar_userid

    # These ids will not be included in the response.
    # @return [Array<String>]
    attr_accessor :except

    
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
      hash['itemid'] = self.itemid
      hash['itemids'] = self.itemids
      hash['filter'] = self.filter
      hash['size'] = self.size
      hash['similar_userid'] = self.similar_userid
      hash['except'] = self.except
      hash
    end

  end
end