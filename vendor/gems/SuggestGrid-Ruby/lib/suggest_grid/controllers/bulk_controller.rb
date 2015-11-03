# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 11/03/2015

module SuggestGrid
  class BulkController

    # TODO: type endpoint description here
    # @param [ActionsModel] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def post_bulk_json_action body, space, type
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_action/_bulk"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
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
      if response.code == 402
        raise APIException.new "Action limit exceeded.", 402, response.raw_body
      elsif response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [UsersModel] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def post_bulk_json_user_metadata body, space
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_user/_bulk"

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
      if response.code == 207
        raise APIException.new "Some metadata is not uploaded successfully.", 207, response.raw_body
      elsif response.code == 429
        raise APIException.new "Too many requests.", 429, response.raw_body
      elsif response.code == 500
        raise APIException.new "Unexpected internal error.", 500, response.raw_body
      elsif !(response.code.between?(200,206)) # [200,206] = HTTP OK
        raise APIException.new "HTTP Response Not OK", response.code, response.raw_body
      end

      response.body
    end

    # TODO: type endpoint description here
    # @param [ItemsModel] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def post_bulk_json_item_metadata body, space
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/_item/_bulk"

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
      if response.code == 207
        raise APIException.new "Some metadata is not uploaded successfully.", 207, response.raw_body
      elsif response.code == 429
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