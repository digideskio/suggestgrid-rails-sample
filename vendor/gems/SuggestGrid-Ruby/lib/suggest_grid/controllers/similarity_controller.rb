# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 11/03/2015

module SuggestGrid
  class SimilarityController

    # TODO: type endpoint description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @param [String] userid_1 Required parameter: TODO: type description here
    # @param [String] userid_2 Required parameter: TODO: type description here
    # @return UserSimilarityResponse response from the API call
    def get_user_similarity space, type, userid_1, userid_2
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_similarity/_users/{userid1}/{userid2}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
        "type" => type,
        "userid1" => userid_1,
        "userid2" => userid_2,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 555
        raise APIException.new "Recommendation model is not found for the given space and type.", 555, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [String] itemid_1 Required parameter: TODO: type description here
    # @param [String] itemid_2 Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return ItemSimilarityResponse response from the API call
    def get_item_similarity itemid_1, itemid_2, space, type
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_similarity/_items/{itemid1}/{itemid2}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "itemid1" => itemid_1,
        "itemid2" => itemid_2,
        "space" => space,
        "type" => type,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 555
        raise APIException.new "Recommendation model is not found for the given space and type.", 555, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [SimilarUsersBody] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @param [String] userid Required parameter: TODO: type description here
    # @return SimilarUsersResponse response from the API call
    def get_similar_users body, space, type, userid
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_similar/_users/{userid}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
        "type" => type,
        "userid" => userid,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:body.to_json, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 555
        raise APIException.new "Recommendation model is not found for the given space and type.", 555, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [SimilarItemsBody] body Required parameter: TODO: type description here
    # @param [String] itemid Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return SimilarItemsResponse response from the API call
    def get_similar_items body, itemid, space, type
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_similar/_items/{itemid}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "itemid" => itemid,
        "space" => space,
        "type" => type,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json",
        "content-type" => "application/json; charset=utf-8"
      }

      # invoke the API call request to fetch the response
      response = Unirest.post query_url, headers:headers, parameters:body.to_json, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end