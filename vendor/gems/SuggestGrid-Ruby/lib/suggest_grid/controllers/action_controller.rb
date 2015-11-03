# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 11/03/2015

module SuggestGrid
  class ActionController

    # TODO: type endpoint description here
    # @param [Action] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def create_action body, space, type
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_action"

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
      if response.code == 400
        raise APIException.new "Required `userid` or `itemid` parameters are missing from the request body.", 400, response.raw_body
      elsif response.code == 402
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

    # If both `userid` and `itemid` are supplied it deletes the corresponding action.
    # If only `userid` is provided, it deletes all the action of the given user.
    # If only `userid` is provided, it deletes all the action of the given item.
    # @param [ActionDeleteBody] body Required parameter: TODO: type description here
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_action body, space, type
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_action"

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
      response = Unirest.delete query_url, headers:headers, parameters:body.to_json, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "Required `userid` or `itemid` parameters are missing from the request body.", 400, response.raw_body
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
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_all_actions space, type
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_action/_all"

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

    # Valid times are 1s, 1m, 1h, 1d, 1M, 1y, or 1443798195 (unix timestamp).
    # @param [String] space Required parameter: TODO: type description here
    # @param [String] time Required parameter: TODO: type description here
    # @param [String] type Required parameter: TODO: type description here
    # @return MessageResponse response from the API call
    def delete_older_actions space, time, type
      # the base uri for api requests
      query_builder = Configuration::BASE_URI.dup

      # prepare query string for API call
      query_builder << "/v1/{space}/{type}/_action/_older_than/{time}"

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        "space" => space,
        "time" => time,
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
      response = Unirest.delete query_url, headers:headers, auth:{ :user => Configuration.basic_auth_user_name, :password => Configuration.basic_auth_password }

      # Error handling using HTTP status codes
      if response.code == 400
        raise APIException.new "The given timestamp is in the future.", 400, response.raw_body
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