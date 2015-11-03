# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 11/03/2015

module SuggestGrid
  class SimilarUsersBody

    # TODO: Write general description for this method
    # @return [Numeric]
    attr_accessor :size

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
      hash['size'] = self.size
      hash['except'] = self.except
      hash
    end

  end
end