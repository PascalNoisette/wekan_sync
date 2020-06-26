=begin
#Wekan REST API

#The REST API allows you to control and extend Wekan with ease.  If you are an end-user and not a dev or a tester, [create an issue](https://github.com/wekan/wekan/issues/new) to request new APIs.  > All API calls in the documentation are made using `curl`.  However, you are free to use Java / Python / PHP / Golang / Ruby / Swift / Objective-C / Rust / Scala / C# or any other programming languages.  # Production Security Concerns When calling a production Wekan server, ensure it is running via HTTPS and has a valid SSL Certificate. The login method requires you to post your username and password in plaintext, which is why we highly suggest only calling the REST login api over HTTPS. Also, few things to note:  * Only call via HTTPS * Implement a timed authorization token expiration strategy * Ensure the calling user only has permissions for what they are calling and no more 

OpenAPI spec version: v4.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class SwimlanesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a swimlane
    # The swimlane will be deleted, not moved to the recycle bin 
    # @param board the ID of the board 
    # @param swimlane the ID of the swimlane 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def delete_swimlane(board, swimlane, opts = {})
      data, _status_code, _headers = delete_swimlane_with_http_info(board, swimlane, opts)
      data
    end

    # Delete a swimlane
    # The swimlane will be deleted, not moved to the recycle bin 
    # @param board the ID of the board 
    # @param swimlane the ID of the swimlane 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def delete_swimlane_with_http_info(board, swimlane, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwimlanesApi.delete_swimlane ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling SwimlanesApi.delete_swimlane"
      end
      # verify the required parameter 'swimlane' is set
      if @api_client.config.client_side_validation && swimlane.nil?
        fail ArgumentError, "Missing the required parameter 'swimlane' when calling SwimlanesApi.delete_swimlane"
      end
      # resource path
      local_var_path = '/api/boards/{board}/swimlanes/{swimlane}'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'swimlane' + '}', swimlane.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwimlanesApi#delete_swimlane\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the list of swimlanes attached to a board
    # @param board the ID of the board 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse200>]
    def get_all_swimlanes(board, opts = {})
      data, _status_code, _headers = get_all_swimlanes_with_http_info(board, opts)
      data
    end

    # Get the list of swimlanes attached to a board
    # @param board the ID of the board 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse200>, Fixnum, Hash)>] Array<InlineResponse200> data, response status code and response headers
    def get_all_swimlanes_with_http_info(board, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwimlanesApi.get_all_swimlanes ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling SwimlanesApi.get_all_swimlanes"
      end
      # resource path
      local_var_path = '/api/boards/{board}/swimlanes'.sub('{' + 'board' + '}', board.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<InlineResponse200>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwimlanesApi#get_all_swimlanes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a swimlane
    # @param board the ID of the board 
    # @param swimlane the ID of the swimlane 
    # @param [Hash] opts the optional parameters
    # @return [Swimlanes]
    def get_swimlane(board, swimlane, opts = {})
      data, _status_code, _headers = get_swimlane_with_http_info(board, swimlane, opts)
      data
    end

    # Get a swimlane
    # @param board the ID of the board 
    # @param swimlane the ID of the swimlane 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Swimlanes, Fixnum, Hash)>] Swimlanes data, response status code and response headers
    def get_swimlane_with_http_info(board, swimlane, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwimlanesApi.get_swimlane ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling SwimlanesApi.get_swimlane"
      end
      # verify the required parameter 'swimlane' is set
      if @api_client.config.client_side_validation && swimlane.nil?
        fail ArgumentError, "Missing the required parameter 'swimlane' when calling SwimlanesApi.get_swimlane"
      end
      # resource path
      local_var_path = '/api/boards/{board}/swimlanes/{swimlane}'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'swimlane' + '}', swimlane.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Swimlanes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwimlanesApi#get_swimlane\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Add a swimlane to a board
    # @param title the new title of the swimlane 
    # @param board the ID of the board 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def new_swimlane(title, board, opts = {})
      data, _status_code, _headers = new_swimlane_with_http_info(title, board, opts)
      data
    end

    # Add a swimlane to a board
    # @param title the new title of the swimlane 
    # @param board the ID of the board 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def new_swimlane_with_http_info(title, board, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SwimlanesApi.new_swimlane ...'
      end
      # verify the required parameter 'title' is set
      if @api_client.config.client_side_validation && title.nil?
        fail ArgumentError, "Missing the required parameter 'title' when calling SwimlanesApi.new_swimlane"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling SwimlanesApi.new_swimlane"
      end
      # resource path
      local_var_path = '/api/boards/{board}/swimlanes'.sub('{' + 'board' + '}', board.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data', 'application/json'])

      # form parameters
      form_params = {}
      form_params['title'] = title

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SwimlanesApi#new_swimlane\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end