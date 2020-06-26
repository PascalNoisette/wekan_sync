=begin
#Wekan REST API

#The REST API allows you to control and extend Wekan with ease.  If you are an end-user and not a dev or a tester, [create an issue](https://github.com/wekan/wekan/issues/new) to request new APIs.  > All API calls in the documentation are made using `curl`.  However, you are free to use Java / Python / PHP / Golang / Ruby / Swift / Objective-C / Rust / Scala / C# or any other programming languages.  # Production Security Concerns When calling a production Wekan server, ensure it is running via HTTPS and has a valid SSL Certificate. The login method requires you to post your username and password in plaintext, which is why we highly suggest only calling the REST login api over HTTPS. Also, few things to note:  * Only call via HTTPS * Implement a timed authorization token expiration strategy * Ensure the calling user only has permissions for what they are calling and no more 

OpenAPI spec version: v4.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add New Board Member with Role
    # Only the admin user (the first user) can call the REST API.   **Note**: see [Boards.set_board_member_permission](#set_board_member_permission)  to later change the permissions. 
    # @param action the action value
    # @param is_admin is the user an admin of the board 
    # @param is_no_comments disable comments 
    # @param is_comment_only only enable comments 
    # @param board the board ID 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def add_board_member(action, is_admin, is_no_comments, is_comment_only, board, user, opts = {})
      data, _status_code, _headers = add_board_member_with_http_info(action, is_admin, is_no_comments, is_comment_only, board, user, opts)
      data
    end

    # Add New Board Member with Role
    # Only the admin user (the first user) can call the REST API.   **Note**: see [Boards.set_board_member_permission](#set_board_member_permission)  to later change the permissions. 
    # @param action the action value
    # @param is_admin is the user an admin of the board 
    # @param is_no_comments disable comments 
    # @param is_comment_only only enable comments 
    # @param board the board ID 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def add_board_member_with_http_info(action, is_admin, is_no_comments, is_comment_only, board, user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.add_board_member ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling UsersApi.add_board_member"
      end
      # verify the required parameter 'is_admin' is set
      if @api_client.config.client_side_validation && is_admin.nil?
        fail ArgumentError, "Missing the required parameter 'is_admin' when calling UsersApi.add_board_member"
      end
      # verify the required parameter 'is_no_comments' is set
      if @api_client.config.client_side_validation && is_no_comments.nil?
        fail ArgumentError, "Missing the required parameter 'is_no_comments' when calling UsersApi.add_board_member"
      end
      # verify the required parameter 'is_comment_only' is set
      if @api_client.config.client_side_validation && is_comment_only.nil?
        fail ArgumentError, "Missing the required parameter 'is_comment_only' when calling UsersApi.add_board_member"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling UsersApi.add_board_member"
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.add_board_member"
      end
      # resource path
      local_var_path = '/api/boards/{board}/members/{user}/add'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'user' + '}', user.to_s)

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
      form_params['action'] = action
      form_params['isAdmin'] = is_admin
      form_params['isNoComments'] = is_no_comments
      form_params['isCommentOnly'] = is_comment_only

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#add_board_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a user
    # Only the admin user (the first user) can call the REST API. 
    # @param user the ID of the user to delete 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def delete_user(user, opts = {})
      data, _status_code, _headers = delete_user_with_http_info(user, opts)
      data
    end

    # Delete a user
    # Only the admin user (the first user) can call the REST API. 
    # @param user the ID of the user to delete 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def delete_user_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/api/users/{user}'.sub('{' + 'user' + '}', user.to_s)

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
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # edit a given user
    # Only the admin user (the first user) can call the REST API.   Possible values for *action*:  - `takeOwnership`: The admin takes the ownership of ALL boards of the user (archived and not archived) where the user is admin on.  - `disableLogin`: Disable a user (the user is not allowed to login and his login tokens are purged)  - `enableLogin`: Enable a user 
    # @param action the action 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def edit_user(action, user, opts = {})
      data, _status_code, _headers = edit_user_with_http_info(action, user, opts)
      data
    end

    # edit a given user
    # Only the admin user (the first user) can call the REST API.   Possible values for *action*:  - &#x60;takeOwnership&#x60;: The admin takes the ownership of ALL boards of the user (archived and not archived) where the user is admin on.  - &#x60;disableLogin&#x60;: Disable a user (the user is not allowed to login and his login tokens are purged)  - &#x60;enableLogin&#x60;: Enable a user 
    # @param action the action 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def edit_user_with_http_info(action, user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.edit_user ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling UsersApi.edit_user"
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.edit_user"
      end
      # resource path
      local_var_path = '/api/users/{user}'.sub('{' + 'user' + '}', user.to_s)

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
      form_params['action'] = action

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#edit_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # return all the users
    # Only the admin user (the first user) can call the REST API. 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse2009>]
    def get_all_users(opts = {})
      data, _status_code, _headers = get_all_users_with_http_info(opts)
      data
    end

    # return all the users
    # Only the admin user (the first user) can call the REST API. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2009>, Fixnum, Hash)>] Array<InlineResponse2009> data, response status code and response headers
    def get_all_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_all_users ...'
      end
      # resource path
      local_var_path = '/api/users'

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
        :return_type => 'Array<InlineResponse2009>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_all_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # returns the current user
    # @param [Hash] opts the optional parameters
    # @return [Users]
    def get_current_user(opts = {})
      data, _status_code, _headers = get_current_user_with_http_info(opts)
      data
    end

    # returns the current user
    # @param [Hash] opts the optional parameters
    # @return [Array<(Users, Fixnum, Hash)>] Users data, response status code and response headers
    def get_current_user_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_current_user ...'
      end
      # resource path
      local_var_path = '/api/user'

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
        :return_type => 'Users')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_current_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # get a given user
    # Only the admin user (the first user) can call the REST API. 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [Users]
    def get_user(user, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user, opts)
      data
    end

    # get a given user
    # Only the admin user (the first user) can call the REST API. 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Users, Fixnum, Hash)>] Users data, response status code and response headers
    def get_user_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/api/users/{user}'.sub('{' + 'user' + '}', user.to_s)

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
        :return_type => 'Users')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new user
    # Only the admin user (the first user) can call the REST API. 
    # @param username the new username 
    # @param email the email of the new user 
    # @param password the password of the new user 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def new_user(username, email, password, opts = {})
      data, _status_code, _headers = new_user_with_http_info(username, email, password, opts)
      data
    end

    # Create a new user
    # Only the admin user (the first user) can call the REST API. 
    # @param username the new username 
    # @param email the email of the new user 
    # @param password the password of the new user 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def new_user_with_http_info(username, email, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.new_user ...'
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling UsersApi.new_user"
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling UsersApi.new_user"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling UsersApi.new_user"
      end
      # resource path
      local_var_path = '/api/users'

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
      form_params['username'] = username
      form_params['email'] = email
      form_params['password'] = password

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
        @api_client.config.logger.debug "API called: UsersApi#new_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove Member from Board
    # Only the admin user (the first user) can call the REST API. 
    # @param action the action (needs to be &#x60;remove&#x60;) 
    # @param board the board ID 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse200]
    def remove_board_member(action, board, user, opts = {})
      data, _status_code, _headers = remove_board_member_with_http_info(action, board, user, opts)
      data
    end

    # Remove Member from Board
    # Only the admin user (the first user) can call the REST API. 
    # @param action the action (needs to be &#x60;remove&#x60;) 
    # @param board the board ID 
    # @param user the user ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def remove_board_member_with_http_info(action, board, user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.remove_board_member ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling UsersApi.remove_board_member"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling UsersApi.remove_board_member"
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling UsersApi.remove_board_member"
      end
      # resource path
      local_var_path = '/api/boards/{board}/members/{user}/remove'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'user' + '}', user.to_s)

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
      form_params['action'] = action

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#remove_board_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Change the permission of a member of a board
    # @param is_admin admin capability 
    # @param is_no_comments NoComments capability 
    # @param is_comment_only CommentsOnly capability 
    # @param is_worker Worker capability 
    # @param board the ID of the board that we are changing 
    # @param member the ID of the user to change permissions 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def set_board_member_permission(is_admin, is_no_comments, is_comment_only, is_worker, board, member, opts = {})
      set_board_member_permission_with_http_info(is_admin, is_no_comments, is_comment_only, is_worker, board, member, opts)
      nil
    end

    # Change the permission of a member of a board
    # @param is_admin admin capability 
    # @param is_no_comments NoComments capability 
    # @param is_comment_only CommentsOnly capability 
    # @param is_worker Worker capability 
    # @param board the ID of the board that we are changing 
    # @param member the ID of the user to change permissions 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_board_member_permission_with_http_info(is_admin, is_no_comments, is_comment_only, is_worker, board, member, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.set_board_member_permission ...'
      end
      # verify the required parameter 'is_admin' is set
      if @api_client.config.client_side_validation && is_admin.nil?
        fail ArgumentError, "Missing the required parameter 'is_admin' when calling UsersApi.set_board_member_permission"
      end
      # verify the required parameter 'is_no_comments' is set
      if @api_client.config.client_side_validation && is_no_comments.nil?
        fail ArgumentError, "Missing the required parameter 'is_no_comments' when calling UsersApi.set_board_member_permission"
      end
      # verify the required parameter 'is_comment_only' is set
      if @api_client.config.client_side_validation && is_comment_only.nil?
        fail ArgumentError, "Missing the required parameter 'is_comment_only' when calling UsersApi.set_board_member_permission"
      end
      # verify the required parameter 'is_worker' is set
      if @api_client.config.client_side_validation && is_worker.nil?
        fail ArgumentError, "Missing the required parameter 'is_worker' when calling UsersApi.set_board_member_permission"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling UsersApi.set_board_member_permission"
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling UsersApi.set_board_member_permission"
      end
      # resource path
      local_var_path = '/api/boards/{board}/members/{member}'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'member' + '}', member.to_s)

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
      form_params['isAdmin'] = is_admin
      form_params['isNoComments'] = is_no_comments
      form_params['isCommentOnly'] = is_comment_only
      form_params['isWorker'] = is_worker

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#set_board_member_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
