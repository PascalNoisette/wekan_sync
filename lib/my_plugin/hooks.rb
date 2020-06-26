

module MyPlugin
    class Hooks < Redmine::Hook::Listener
      def controller_issues_new_after_save(context={ })
        # todo
        Rails.logger.info 'TODO controller_issues_new_after_save'

        issue = context[:issue]

        SwaggerClient.configure do |config|
          # Configure API key authorization: UserSecurity
          config.host = "172.17.0.1"
          config.scheme = "http"
        end


        api_instance = SwaggerClient::LoginApi.new
        loginResult = api_instance.login("admin", "adminadmin")


        SwaggerClient.configure do |config|
          # Configure API key authorization: UserSecurity
          config.api_key['Authorization'] = loginResult.token
          # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
          #config.api_key_prefix['Authorization'] = 'Bearer'
        end




        api_instance = SwaggerClient::CardsApi.new

        author_id = 'TDaeEiRLekKyFSfNt' # String | the authorId value

        title = issue.subject # String | the title of the new card 

        description = 'description_example' # String | the description of the new card 

        swimlane_id = 'hJJ3LzqEuJDmRphsd' # String | the swimlane ID of the new card 

        board = 'TDrthxNv9bNAF2xQA' # String | the board ID of the new card 

        list = 'iqS6d6CeFBWFN6Pzk' # String | the list ID of the new card 

        result = api_instance.new_card(author_id, title, description, swimlane_id, board, list)
      end
    end
end
  