=begin
#Wekan REST API

#The REST API allows you to control and extend Wekan with ease.  If you are an end-user and not a dev or a tester, [create an issue](https://github.com/wekan/wekan/issues/new) to request new APIs.  > All API calls in the documentation are made using `curl`.  However, you are free to use Java / Python / PHP / Golang / Ruby / Swift / Objective-C / Rust / Scala / C# or any other programming languages.  # Production Security Concerns When calling a production Wekan server, ensure it is running via HTTPS and has a valid SSL Certificate. The login method requires you to post your username and password in plaintext, which is why we highly suggest only calling the REST login api over HTTPS. Also, few things to note:  * Only call via HTTPS * Implement a timed authorization token expiration strategy * Ensure the calling user only has permissions for what they are calling and no more 

OpenAPI spec version: v4.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15-SNAPSHOT

=end

require 'uri'

module SwaggerClient
  class CardsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete a card from a board
    # This operation **deletes** a card, and therefore the card  is not put in the recycle bin. 
    # @param board the board ID of the card 
    # @param list the list ID of the card 
    # @param card the ID of the card 
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2002]
    def delete_card(board, list, card, opts = {})
      data, _status_code, _headers = delete_card_with_http_info(board, list, card, opts)
      data
    end

    # Delete a card from a board
    # This operation **deletes** a card, and therefore the card  is not put in the recycle bin. 
    # @param board the board ID of the card 
    # @param list the list ID of the card 
    # @param card the ID of the card 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def delete_card_with_http_info(board, list, card, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.delete_card ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling CardsApi.delete_card"
      end
      # verify the required parameter 'list' is set
      if @api_client.config.client_side_validation && list.nil?
        fail ArgumentError, "Missing the required parameter 'list' when calling CardsApi.delete_card"
      end
      # verify the required parameter 'card' is set
      if @api_client.config.client_side_validation && card.nil?
        fail ArgumentError, "Missing the required parameter 'card' when calling CardsApi.delete_card"
      end
      # resource path
      local_var_path = '/api/boards/{board}/lists/{list}/cards/{card}'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'list' + '}', list.to_s).sub('{' + 'card' + '}', card.to_s)

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
        @api_client.config.logger.debug "API called: CardsApi#delete_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit Fields in a Card
    # Edit a card   The color has to be chosen between `white`, `green`, `yellow`, `orange`,  `red`, `purple`, `blue`, `sky`, `lime`, `pink`, `black`, `silver`,  `peachpuff`, `crimson`, `plum`, `darkgreen`, `slateblue`, `magenta`,  `gold`, `navy`, `gray`, `saddlebrown`, `paleturquoise`, `mistyrose`,  `indigo`:   <img src=\"/card-colors.png\" width=\"40%\" alt=\"Wekan card colors\" />   Note: setting the color to white has the same effect than removing it. 
    # @param board the board ID of the card 
    # @param list the list ID of the card 
    # @param card the ID of the card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title the new title of the card 
    # @option opts [String] :list_id the new list ID of the card (move operation) 
    # @option opts [String] :author_id change the owner of the card 
    # @option opts [String] :parent_id change the parent of the card 
    # @option opts [String] :description the new description of the card 
    # @option opts [String] :color the new color of the card 
    # @option opts [Hash<String, String>] :vote the vote object 
    # @option opts [String] :label_ids the new list of label IDs attached to the card 
    # @option opts [String] :requested_by the new requestedBy field of the card 
    # @option opts [String] :assigned_by the new assignedBy field of the card 
    # @option opts [String] :received_at the new receivedAt field of the card 
    # @option opts [String] :start_at the new startAt field of the card 
    # @option opts [String] :due_at the new dueAt field of the card 
    # @option opts [String] :end_at the new endAt field of the card 
    # @option opts [String] :spent_time the new spentTime field of the card 
    # @option opts [BOOLEAN] :is_over_time the new isOverTime field of the card 
    # @option opts [String] :custom_fields the new customFields value of the card 
    # @option opts [String] :members the new list of member IDs attached to the card 
    # @option opts [String] :assignees the array of maximum one ID of assignee attached to the card 
    # @option opts [String] :swimlane_id the new swimlane ID of the card 
    # @return [InlineResponse2002]
    def edit_card(board, list, card, opts = {})
      data, _status_code, _headers = edit_card_with_http_info(board, list, card, opts)
      data
    end

    # Edit Fields in a Card
    # Edit a card   The color has to be chosen between &#x60;white&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, &#x60;orange&#x60;,  &#x60;red&#x60;, &#x60;purple&#x60;, &#x60;blue&#x60;, &#x60;sky&#x60;, &#x60;lime&#x60;, &#x60;pink&#x60;, &#x60;black&#x60;, &#x60;silver&#x60;,  &#x60;peachpuff&#x60;, &#x60;crimson&#x60;, &#x60;plum&#x60;, &#x60;darkgreen&#x60;, &#x60;slateblue&#x60;, &#x60;magenta&#x60;,  &#x60;gold&#x60;, &#x60;navy&#x60;, &#x60;gray&#x60;, &#x60;saddlebrown&#x60;, &#x60;paleturquoise&#x60;, &#x60;mistyrose&#x60;,  &#x60;indigo&#x60;:   &lt;img src&#x3D;\&quot;/card-colors.png\&quot; width&#x3D;\&quot;40%\&quot; alt&#x3D;\&quot;Wekan card colors\&quot; /&gt;   Note: setting the color to white has the same effect than removing it. 
    # @param board the board ID of the card 
    # @param list the list ID of the card 
    # @param card the ID of the card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :title the new title of the card 
    # @option opts [String] :list_id the new list ID of the card (move operation) 
    # @option opts [String] :author_id change the owner of the card 
    # @option opts [String] :parent_id change the parent of the card 
    # @option opts [String] :description the new description of the card 
    # @option opts [String] :color the new color of the card 
    # @option opts [Hash<String, String>] :vote the vote object 
    # @option opts [String] :label_ids the new list of label IDs attached to the card 
    # @option opts [String] :requested_by the new requestedBy field of the card 
    # @option opts [String] :assigned_by the new assignedBy field of the card 
    # @option opts [String] :received_at the new receivedAt field of the card 
    # @option opts [String] :start_at the new startAt field of the card 
    # @option opts [String] :due_at the new dueAt field of the card 
    # @option opts [String] :end_at the new endAt field of the card 
    # @option opts [String] :spent_time the new spentTime field of the card 
    # @option opts [BOOLEAN] :is_over_time the new isOverTime field of the card 
    # @option opts [String] :custom_fields the new customFields value of the card 
    # @option opts [String] :members the new list of member IDs attached to the card 
    # @option opts [String] :assignees the array of maximum one ID of assignee attached to the card 
    # @option opts [String] :swimlane_id the new swimlane ID of the card 
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def edit_card_with_http_info(board, list, card, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.edit_card ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling CardsApi.edit_card"
      end
      # verify the required parameter 'list' is set
      if @api_client.config.client_side_validation && list.nil?
        fail ArgumentError, "Missing the required parameter 'list' when calling CardsApi.edit_card"
      end
      # verify the required parameter 'card' is set
      if @api_client.config.client_side_validation && card.nil?
        fail ArgumentError, "Missing the required parameter 'card' when calling CardsApi.edit_card"
      end
      # resource path
      local_var_path = '/api/boards/{board}/lists/{list}/cards/{card}'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'list' + '}', list.to_s).sub('{' + 'card' + '}', card.to_s)

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
      form_params['title'] = opts[:'title'] if !opts[:'title'].nil?
      form_params['listId'] = opts[:'list_id'] if !opts[:'list_id'].nil?
      form_params['authorId'] = opts[:'author_id'] if !opts[:'author_id'].nil?
      form_params['parentId'] = opts[:'parent_id'] if !opts[:'parent_id'].nil?
      form_params['description'] = opts[:'description'] if !opts[:'description'].nil?
      form_params['color'] = opts[:'color'] if !opts[:'color'].nil?
      form_params['vote'] = opts[:'vote'] if !opts[:'vote'].nil?
      form_params['labelIds'] = opts[:'label_ids'] if !opts[:'label_ids'].nil?
      form_params['requestedBy'] = opts[:'requested_by'] if !opts[:'requested_by'].nil?
      form_params['assignedBy'] = opts[:'assigned_by'] if !opts[:'assigned_by'].nil?
      form_params['receivedAt'] = opts[:'received_at'] if !opts[:'received_at'].nil?
      form_params['startAt'] = opts[:'start_at'] if !opts[:'start_at'].nil?
      form_params['dueAt'] = opts[:'due_at'] if !opts[:'due_at'].nil?
      form_params['endAt'] = opts[:'end_at'] if !opts[:'end_at'].nil?
      form_params['spentTime'] = opts[:'spent_time'] if !opts[:'spent_time'].nil?
      form_params['isOverTime'] = opts[:'is_over_time'] if !opts[:'is_over_time'].nil?
      form_params['customFields'] = opts[:'custom_fields'] if !opts[:'custom_fields'].nil?
      form_params['members'] = opts[:'members'] if !opts[:'members'].nil?
      form_params['assignees'] = opts[:'assignees'] if !opts[:'assignees'].nil?
      form_params['swimlaneId'] = opts[:'swimlane_id'] if !opts[:'swimlane_id'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#edit_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all Cards attached to a List
    # @param board the board ID 
    # @param list the list ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse2007>]
    def get_all_cards(board, list, opts = {})
      data, _status_code, _headers = get_all_cards_with_http_info(board, list, opts)
      data
    end

    # Get all Cards attached to a List
    # @param board the board ID 
    # @param list the list ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2007>, Fixnum, Hash)>] Array<InlineResponse2007> data, response status code and response headers
    def get_all_cards_with_http_info(board, list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.get_all_cards ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling CardsApi.get_all_cards"
      end
      # verify the required parameter 'list' is set
      if @api_client.config.client_side_validation && list.nil?
        fail ArgumentError, "Missing the required parameter 'list' when calling CardsApi.get_all_cards"
      end
      # resource path
      local_var_path = '/api/boards/{board}/lists/{list}/cards'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'list' + '}', list.to_s)

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
        :return_type => 'Array<InlineResponse2007>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#get_all_cards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a Card
    # @param board the board ID 
    # @param list the list ID of the card 
    # @param card the card ID 
    # @param [Hash] opts the optional parameters
    # @return [Cards]
    def get_card(board, list, card, opts = {})
      data, _status_code, _headers = get_card_with_http_info(board, list, card, opts)
      data
    end

    # Get a Card
    # @param board the board ID 
    # @param list the list ID of the card 
    # @param card the card ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Cards, Fixnum, Hash)>] Cards data, response status code and response headers
    def get_card_with_http_info(board, list, card, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.get_card ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling CardsApi.get_card"
      end
      # verify the required parameter 'list' is set
      if @api_client.config.client_side_validation && list.nil?
        fail ArgumentError, "Missing the required parameter 'list' when calling CardsApi.get_card"
      end
      # verify the required parameter 'card' is set
      if @api_client.config.client_side_validation && card.nil?
        fail ArgumentError, "Missing the required parameter 'card' when calling CardsApi.get_card"
      end
      # resource path
      local_var_path = '/api/boards/{board}/lists/{list}/cards/{card}'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'list' + '}', list.to_s).sub('{' + 'card' + '}', card.to_s)

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
        :return_type => 'Cards')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#get_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all Cards that matchs a value of a specific custom field
    # @param board the board ID 
    # @param custom_field the list ID 
    # @param custom_field_value the value to look for 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse2005>]
    def get_cards_by_custom_field(board, custom_field, custom_field_value, opts = {})
      data, _status_code, _headers = get_cards_by_custom_field_with_http_info(board, custom_field, custom_field_value, opts)
      data
    end

    # Get all Cards that matchs a value of a specific custom field
    # @param board the board ID 
    # @param custom_field the list ID 
    # @param custom_field_value the value to look for 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2005>, Fixnum, Hash)>] Array<InlineResponse2005> data, response status code and response headers
    def get_cards_by_custom_field_with_http_info(board, custom_field, custom_field_value, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.get_cards_by_custom_field ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling CardsApi.get_cards_by_custom_field"
      end
      # verify the required parameter 'custom_field' is set
      if @api_client.config.client_side_validation && custom_field.nil?
        fail ArgumentError, "Missing the required parameter 'custom_field' when calling CardsApi.get_cards_by_custom_field"
      end
      # verify the required parameter 'custom_field_value' is set
      if @api_client.config.client_side_validation && custom_field_value.nil?
        fail ArgumentError, "Missing the required parameter 'custom_field_value' when calling CardsApi.get_cards_by_custom_field"
      end
      # resource path
      local_var_path = '/api/boards/{board}/cardsByCustomField/{customField}/{customFieldValue}'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'customField' + '}', custom_field.to_s).sub('{' + 'customFieldValue' + '}', custom_field_value.to_s)

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
        :return_type => 'Array<InlineResponse2005>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#get_cards_by_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # get all cards attached to a swimlane
    # @param board the board ID 
    # @param swimlane the swimlane ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<InlineResponse2008>]
    def get_swimlane_cards(board, swimlane, opts = {})
      data, _status_code, _headers = get_swimlane_cards_with_http_info(board, swimlane, opts)
      data
    end

    # get all cards attached to a swimlane
    # @param board the board ID 
    # @param swimlane the swimlane ID 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<InlineResponse2008>, Fixnum, Hash)>] Array<InlineResponse2008> data, response status code and response headers
    def get_swimlane_cards_with_http_info(board, swimlane, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.get_swimlane_cards ...'
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling CardsApi.get_swimlane_cards"
      end
      # verify the required parameter 'swimlane' is set
      if @api_client.config.client_side_validation && swimlane.nil?
        fail ArgumentError, "Missing the required parameter 'swimlane' when calling CardsApi.get_swimlane_cards"
      end
      # resource path
      local_var_path = '/api/boards/{board}/swimlanes/{swimlane}/cards'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'swimlane' + '}', swimlane.to_s)

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
        :return_type => 'Array<InlineResponse2008>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CardsApi#get_swimlane_cards\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new Card
    # @param author_id the authorId value
    # @param title the title of the new card 
    # @param description the description of the new card 
    # @param swimlane_id the swimlane ID of the new card 
    # @param board the board ID of the new card 
    # @param list the list ID of the new card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :members the member IDs list of the new card 
    # @option opts [String] :assignees the array of maximum one ID of assignee of the new card 
    # @return [InlineResponse2002]
    def new_card(author_id, title, description, swimlane_id, board, list, opts = {})
      data, _status_code, _headers = new_card_with_http_info(author_id, title, description, swimlane_id, board, list, opts)
      data
    end

    # Create a new Card
    # @param author_id the authorId value
    # @param title the title of the new card 
    # @param description the description of the new card 
    # @param swimlane_id the swimlane ID of the new card 
    # @param board the board ID of the new card 
    # @param list the list ID of the new card 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :members the member IDs list of the new card 
    # @option opts [String] :assignees the array of maximum one ID of assignee of the new card 
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def new_card_with_http_info(author_id, title, description, swimlane_id, board, list, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CardsApi.new_card ...'
      end
      # verify the required parameter 'author_id' is set
      if @api_client.config.client_side_validation && author_id.nil?
        fail ArgumentError, "Missing the required parameter 'author_id' when calling CardsApi.new_card"
      end
      # verify the required parameter 'title' is set
      if @api_client.config.client_side_validation && title.nil?
        fail ArgumentError, "Missing the required parameter 'title' when calling CardsApi.new_card"
      end
      # verify the required parameter 'description' is set
      if @api_client.config.client_side_validation && description.nil?
        fail ArgumentError, "Missing the required parameter 'description' when calling CardsApi.new_card"
      end
      # verify the required parameter 'swimlane_id' is set
      if @api_client.config.client_side_validation && swimlane_id.nil?
        fail ArgumentError, "Missing the required parameter 'swimlane_id' when calling CardsApi.new_card"
      end
      # verify the required parameter 'board' is set
      if @api_client.config.client_side_validation && board.nil?
        fail ArgumentError, "Missing the required parameter 'board' when calling CardsApi.new_card"
      end
      # verify the required parameter 'list' is set
      if @api_client.config.client_side_validation && list.nil?
        fail ArgumentError, "Missing the required parameter 'list' when calling CardsApi.new_card"
      end
      # resource path
      local_var_path = '/api/boards/{board}/lists/{list}/cards'.sub('{' + 'board' + '}', board.to_s).sub('{' + 'list' + '}', list.to_s)

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
      form_params['authorId'] = author_id
      form_params['title'] = title
      form_params['description'] = description
      form_params['swimlaneId'] = swimlane_id
      form_params['members'] = opts[:'members'] if !opts[:'members'].nil?
      form_params['assignees'] = opts[:'assignees'] if !opts[:'assignees'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['UserSecurity']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => post_body,
        :body => form_params,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2002')
      @api_client.config.logger.info "API called: CardsApi#new_card\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      return data, status_code, headers
    end
  end
end
