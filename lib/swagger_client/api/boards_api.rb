=begin
#Wekan REST API

#The REST API allows you to control and extend Wekan with ease.  If you are an end-user and not a dev or a tester, [create an issue](https://github.com/wekan/wekan/issues/new) to request new APIs.  > All API calls in the documentation are made using `curl`.  However, you are free to use Java / Python / PHP / Golang / Ruby / Swift / Objective-C / Rust / Scala / C# or any other programming languages.  # Production Security Concerns When calling a production Wekan server, ensure it is running via HTTPS and has a valid SSL Certificate. The login method requires you to post your username and password in plaintext, which is why we highly suggest only calling the REST login api over HTTPS. Also, few things to note:  * Only call via HTTPS * Implement a timed authorization token expiration strategy * Ensure the calling user only has permissions for what they are calling and no more 

OpenAPI spec version: v4.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class BoardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a label to a board
    # If the board doesn't have the name/color label, this function  adds the label to the board. 
    # @param label the label value
    # @param board the board 
    # @param [Hash] opts the optional parameters
    # @return [String]
    def add_board_label(label, board, opts = {})
      data, _status_code, _headers = add_board_label_with_http_info(label, board, opts)
      data
    end

    # Add a label to a board
    # If the board doesn&#39;t have the name/color label, this function  adds the label to the board. 
    # @param label the label value
    # @param board the board 
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def add_board_label_with_http_info(label, board, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardsApi.add_board_label ...'
      end
      # verify the required parameter 'label' is set
      if @api_client.config.client_side_validation && label.nil?
        fail ArgumentError, "Missing the required parameter 'label' when calling BoardsApi.add_board_label"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling BoardsApi.add_board_label"
      end
      # resource path
      local_var_path = '/api/boards/{board}/labels'.sub('{' + 'board' + '}', board.to_s)

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
      form_params['label'] = label

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardsApi#add_board_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
        @api_client.config.logger.debug 'Calling API: BoardsApi.add_board_member ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling BoardsApi.add_board_member"
      end
      # verify the required parameter 'is_admin' is set
      if @api_client.config.client_side_validation && is_admin.nil?
        fail ArgumentError, "Missing the required parameter 'is_admin' when calling BoardsApi.add_board_member"
      end
      # verify the required parameter 'is_no_comments' is set
      if @api_client.config.client_side_validation && is_no_comments.nil?
        fail ArgumentError, "Missing the required parameter 'is_no_comments' when calling BoardsApi.add_board_member"
      end
      # verify the required parameter 'is_comment_only' is set
      if @api_client.config.client_side_validation && is_comment_only.nil?
        fail ArgumentError, "Missing the required parameter 'is_comment_only' when calling BoardsApi.add_board_member"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling BoardsApi.add_board_member"
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling BoardsApi.add_board_member"
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
        @api_client.config.logger.debug "API called: BoardsApi#add_board_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a board
    # @param board the ID of the board 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_board(board, opts = {})
      delete_board_with_http_info(board, opts)
      nil
    end

    # Delete a board
    # @param board the ID of the board 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_board_with_http_info(board, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardsApi.delete_board ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling BoardsApi.delete_board"
      end
      # resource path
      local_var_path = '/api/boards/{board}'.sub('{' + 'board' + '}', board.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardsApi#delete_board\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # This route is used to export the board to a json file format.
    # If user is already logged-in, pass loginToken as param  \"authToken\": '/api/boards/:boardId/export?authToken=:token'   See https://blog.kayla.com.au/server-side-route-authentication-in-meteor/  for detailed explanations 
    # @param board the ID of the board we are exporting 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def export_json(board, opts = {})
      export_json_with_http_info(board, opts)
      nil
    end

    # This route is used to export the board to a json file format.
    # If user is already logged-in, pass loginToken as param  \&quot;authToken\&quot;: &#39;/api/boards/:boardId/export?authToken&#x3D;:token&#39;   See https://blog.kayla.com.au/server-side-route-authentication-in-meteor/  for detailed explanations 
    # @param board the ID of the board we are exporting 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def export_json_with_http_info(board, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardsApi.export_json ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling BoardsApi.export_json"
      end
      # resource path
      local_var_path = '/api/boards/{board}/export'.sub('{' + 'board' + '}', board.to_s)

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardsApi#export_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the board with that particular ID
    # @param board the ID of the board to retrieve the data 
    # @param [Hash] opts the optional parameters
    # @return [Boards]
    def get_board(board, opts = {})
      data, _status_code, _headers = get_board_with_http_info(board, opts)
      data
    end

    # Get the board with that particular ID
    # @param board the ID of the board to retrieve the data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Boards, Fixnum, Hash)>] Boards data, response status code and response headers
    def get_board_with_http_info(board, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardsApi.get_board ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling BoardsApi.get_board"
      end
      # resource path
      local_var_path = '/api/boards/{board}'.sub('{' + 'board' + '}', board.to_s)

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
        :return_type => 'Boards')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardsApi#get_board\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all boards attached to a user
    # @param user the ID of the user to retrieve the data 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse200>]
    def get_boards_from_user(user, opts = {})
      data, _status_code, _headers = get_boards_from_user_with_http_info(user, opts)
      data
    end

    # Get all boards attached to a user
    # @param user the ID of the user to retrieve the data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse200>, Fixnum, Hash)>] Array<InlineResponse200> data, response status code and response headers
    def get_boards_from_user_with_http_info(user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardsApi.get_boards_from_user ...'
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling BoardsApi.get_boards_from_user"
      end
      # resource path
      local_var_path = '/api/users/{user}/boards'.sub('{' + 'user' + '}', user.to_s)

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
        @api_client.config.logger.debug "API called: BoardsApi#get_boards_from_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all public boards
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse200>]
    def get_public_boards(opts = {})
      data, _status_code, _headers = get_public_boards_with_http_info(opts)
      data
    end

    # Get all public boards
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse200>, Fixnum, Hash)>] Array<InlineResponse200> data, response status code and response headers
    def get_public_boards_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardsApi.get_public_boards ...'
      end
      # resource path
      local_var_path = '/api/boards'

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
        @api_client.config.logger.debug "API called: BoardsApi#get_public_boards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a board
    # This allows to create a board.   The color has to be chosen between `belize`, `nephritis`, `pomegranate`,  `pumpkin`, `wisteria`, `moderatepink`, `strongcyan`,  `limegreen`, `midnight`, `dark`, `relax`, `corteza`:   <img src=\"https://wekan.github.io/board-colors.png\" width=\"40%\" alt=\"Wekan logo\" /> 
    # @param title the new title of the board 
    # @param owner \&quot;ABCDE12345\&quot; &lt;&#x3D; User ID in Wekan.      (Not username or email) 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_admin is the owner an admin of the board (default true) 
    # @option opts [BOOLEAN] :is_active is the board active (default true) 
    # @option opts [BOOLEAN] :is_no_comments disable comments (default false) 
    # @option opts [BOOLEAN] :is_comment_only only enable comments (default false) 
    # @option opts [BOOLEAN] :is_worker only move cards, assign himself to card and comment (default false) 
    # @option opts [String] :permission \&quot;private\&quot; board &lt;&#x3D;&#x3D; Set to \&quot;public\&quot; if you      want public Wekan board 
    # @option opts [String] :color the color of the board 
    # @return [InlineResponse2001]
    def new_board(title, owner, opts = {})
      data, _status_code, _headers = new_board_with_http_info(title, owner, opts)
      data
    end

    # Create a board
    # This allows to create a board.   The color has to be chosen between &#x60;belize&#x60;, &#x60;nephritis&#x60;, &#x60;pomegranate&#x60;,  &#x60;pumpkin&#x60;, &#x60;wisteria&#x60;, &#x60;moderatepink&#x60;, &#x60;strongcyan&#x60;,  &#x60;limegreen&#x60;, &#x60;midnight&#x60;, &#x60;dark&#x60;, &#x60;relax&#x60;, &#x60;corteza&#x60;:   &lt;img src&#x3D;\&quot;https://wekan.github.io/board-colors.png\&quot; width&#x3D;\&quot;40%\&quot; alt&#x3D;\&quot;Wekan logo\&quot; /&gt; 
    # @param title the new title of the board 
    # @param owner \&quot;ABCDE12345\&quot; &lt;&#x3D; User ID in Wekan.      (Not username or email) 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_admin is the owner an admin of the board (default true) 
    # @option opts [BOOLEAN] :is_active is the board active (default true) 
    # @option opts [BOOLEAN] :is_no_comments disable comments (default false) 
    # @option opts [BOOLEAN] :is_comment_only only enable comments (default false) 
    # @option opts [BOOLEAN] :is_worker only move cards, assign himself to card and comment (default false) 
    # @option opts [String] :permission \&quot;private\&quot; board &lt;&#x3D;&#x3D; Set to \&quot;public\&quot; if you      want public Wekan board 
    # @option opts [String] :color the color of the board 
    # @return [Array<(InlineResponse2001, Fixnum, Hash)>] InlineResponse2001 data, response status code and response headers
    def new_board_with_http_info(title, owner, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BoardsApi.new_board ...'
      end
      # verify the required parameter 'title' is set
      if @api_client.config.client_side_validation && title.nil?
        fail ArgumentError, "Missing the required parameter 'title' when calling BoardsApi.new_board"
      end
      # verify the required parameter 'owner' is set
      if @api_client.config.client_side_validation && owner.nil?
        fail ArgumentError, "Missing the required parameter 'owner' when calling BoardsApi.new_board"
      end
      # resource path
      local_var_path = '/api/boards'

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
      form_params['owner'] = owner
      form_params['isAdmin'] = opts[:'is_admin'] if !opts[:'is_admin'].nil?
      form_params['isActive'] = opts[:'is_active'] if !opts[:'is_active'].nil?
      form_params['isNoComments'] = opts[:'is_no_comments'] if !opts[:'is_no_comments'].nil?
      form_params['isCommentOnly'] = opts[:'is_comment_only'] if !opts[:'is_comment_only'].nil?
      form_params['isWorker'] = opts[:'is_worker'] if !opts[:'is_worker'].nil?
      form_params['permission'] = opts[:'permission'] if !opts[:'permission'].nil?
      form_params['color'] = opts[:'color'] if !opts[:'color'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2001')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BoardsApi#new_board\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: BoardsApi.remove_board_member ...'
      end
      # verify the required parameter 'action' is set
      if @api_client.config.client_side_validation && action.nil?
        fail ArgumentError, "Missing the required parameter 'action' when calling BoardsApi.remove_board_member"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling BoardsApi.remove_board_member"
      end
      # verify the required parameter 'user' is set
      if @api_client.config.client_side_validation && user.nil?
        fail ArgumentError, "Missing the required parameter 'user' when calling BoardsApi.remove_board_member"
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
        @api_client.config.logger.debug "API called: BoardsApi#remove_board_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: BoardsApi.set_board_member_permission ...'
      end
      # verify the required parameter 'is_admin' is set
      if @api_client.config.client_side_validation && is_admin.nil?
        fail ArgumentError, "Missing the required parameter 'is_admin' when calling BoardsApi.set_board_member_permission"
      end
      # verify the required parameter 'is_no_comments' is set
      if @api_client.config.client_side_validation && is_no_comments.nil?
        fail ArgumentError, "Missing the required parameter 'is_no_comments' when calling BoardsApi.set_board_member_permission"
      end
      # verify the required parameter 'is_comment_only' is set
      if @api_client.config.client_side_validation && is_comment_only.nil?
        fail ArgumentError, "Missing the required parameter 'is_comment_only' when calling BoardsApi.set_board_member_permission"
      end
      # verify the required parameter 'is_worker' is set
      if @api_client.config.client_side_validation && is_worker.nil?
        fail ArgumentError, "Missing the required parameter 'is_worker' when calling BoardsApi.set_board_member_permission"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling BoardsApi.set_board_member_permission"
      end
      # verify the required parameter 'member' is set
      if @api_client.config.client_side_validation && member.nil?
        fail ArgumentError, "Missing the required parameter 'member' when calling BoardsApi.set_board_member_permission"
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
        @api_client.config.logger.debug "API called: BoardsApi#set_board_member_permission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
