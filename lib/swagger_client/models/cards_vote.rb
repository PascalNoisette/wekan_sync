=begin
#Wekan REST API

#The REST API allows you to control and extend Wekan with ease.  If you are an end-user and not a dev or a tester, [create an issue](https://github.com/wekan/wekan/issues/new) to request new APIs.  > All API calls in the documentation are made using `curl`.  However, you are free to use Java / Python / PHP / Golang / Ruby / Swift / Objective-C / Rust / Scala / C# or any other programming languages.  # Production Security Concerns When calling a production Wekan server, ensure it is running via HTTPS and has a valid SSL Certificate. The login method requires you to post your username and password in plaintext, which is why we highly suggest only calling the REST login api over HTTPS. Also, few things to note:  * Only call via HTTPS * Implement a timed authorization token expiration strategy * Ensure the calling user only has permissions for what they are calling and no more 

OpenAPI spec version: v4.17

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15-SNAPSHOT

=end

require 'date'

module SwaggerClient
  class CardsVote
    attr_accessor :question

    # list of members (user IDs) 
    attr_accessor :positive

    # list of members (user IDs) 
    attr_accessor :negative

    attr_accessor :_end

    attr_accessor :public

    attr_accessor :allow_non_board_members

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'question' => :'question',
        :'positive' => :'positive',
        :'negative' => :'negative',
        :'_end' => :'end',
        :'public' => :'public',
        :'allow_non_board_members' => :'allowNonBoardMembers'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'question' => :'String',
        :'positive' => :'Array<String>',
        :'negative' => :'Array<String>',
        :'_end' => :'String',
        :'public' => :'BOOLEAN',
        :'allow_non_board_members' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'question')
        self.question = attributes[:'question']
      end

      if attributes.has_key?(:'positive')
        if (value = attributes[:'positive']).is_a?(Array)
          self.positive = value
        end
      end

      if attributes.has_key?(:'negative')
        if (value = attributes[:'negative']).is_a?(Array)
          self.negative = value
        end
      end

      if attributes.has_key?(:'end')
        self._end = attributes[:'end']
      end

      if attributes.has_key?(:'public')
        self.public = attributes[:'public']
      end

      if attributes.has_key?(:'allowNonBoardMembers')
        self.allow_non_board_members = attributes[:'allowNonBoardMembers']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @question.nil?
        invalid_properties.push('invalid value for "question", question cannot be nil.')
      end

      if @public.nil?
        invalid_properties.push('invalid value for "public", public cannot be nil.')
      end

      if @allow_non_board_members.nil?
        invalid_properties.push('invalid value for "allow_non_board_members", allow_non_board_members cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @question.nil?
      return false if @public.nil?
      return false if @allow_non_board_members.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          question == o.question &&
          positive == o.positive &&
          negative == o.negative &&
          _end == o._end &&
          public == o.public &&
          allow_non_board_members == o.allow_non_board_members
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [question, positive, negative, _end, public, allow_non_board_members].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
