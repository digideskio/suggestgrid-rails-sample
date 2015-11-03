# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 11/03/2015

module SuggestGrid
  class MetadataController

    # TODO: type endpoint description here
    # @param [Metadata] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def create_user_metadata body, space
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_user"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
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
      if response.code == 400
        raise APIException.new "Metadata is invalid.", 400, response.raw_body
      elsif response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Delete an user metadata with the given userid.
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] userid Required parameter: The userid to delete its metadata.
    # @return MessageResponse response from the API call
    def delete_an_user_metadata space, userid
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_user/{userid}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
        "userid" => userid,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_all_user_metadata space
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_user/_all"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [Metadata] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def create_item_metadata body, space
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_item"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
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
      if response.code == 400
        raise APIException.new "Metadata is invalid.", 400, response.raw_body
      elsif response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # Delete an item metadata with the given itemid.
    # @param [String] itemid Required parameter: The itemid to delete its metadata.
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_an_item_metadata itemid, space
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_item/{itemid}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "itemid" => itemid,
        "space" => space,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_all_item_metadata space
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_item/_all"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        "user-agent" => "SUGGESTGRID",
        "accept" => "application/json"
      }

      # invoke the API call request to fetch the response
      response = Unirest.delete query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

  end
end