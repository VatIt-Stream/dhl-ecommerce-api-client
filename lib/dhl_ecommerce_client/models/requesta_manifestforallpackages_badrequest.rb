=begin
#DHL eCommerce Solutions Americas API

### `VERSION 4.0` ![Alt](https://www.dhl.com/img/meta/dhl_logo.gif \"DHL eCommerce logo\")    Last updated: 04-AUG-2020       #### This site is a complete reference for DHL eCommerce Solutions Americas (Version 4) API, and also includes a free, ready-to-use Postman collection to get started quickly.  > The simplified overview for these APIs is located in our group-wide Developer Portal located [here](https://developer.dhl.com/api-reference/dhl-ecommerce-solutions-americas#get-started-section/get-started).   ***    ## Overview The **DHL ECOMMERCE SOLUTIONS AMERICAS API** is your one stop solution to get shipping products, calculating duty and tax, generating shipping labels, manifesting packages, requesting shipment pickup, tracking packages and generating return labels.     ![Overview image](https://i.ibb.co/4PNNzF3/Overviewupload3.png \"Overview\")      ***    #### The API can be used for:   * Only DHLeC packages originating within United States and Canada * Domestic and international packages * All DHL eCommerce Solutions Americas shipping products  This documentation provides detailed information about the API structure and its use. You can also go directly to the following topics:  * [Product Finder API](https://api.dhlecs.com/docs/products)  * [Duty and Tax Calculator (DTC) API](https://api.dhlecs.com/docs/dtc)  * [Label API](https://api.dhlecs.com/docs/label)  * [Manifest API](https://api.dhlecs.com/docs/manifest)  * [Tracking API](https://api.dhlecs.com/docs/tracking)   * [Transportation API](https://api.dhlecs.com/docs/transportation)  * [API References](https://api.dhlecs.com/docs/references)  * [API Error Reference](https://api.dhlecs.com/docs/errors)  Also, information about each error code can be directly referenced by appending the error code to the following URL. For example -    `https://api.dhlecs.com/docs/errors/400.0204003`     The same error URLs are also returned in the APIs when there is an error response. This allows clients to quickly get detailed information on each type of error.    ***  #### Using the API The API has been designed for use by developers. You will need basic knowledge of REST APIs, JSON and HTTPS. Also, your organization must to have a customer account with DHL eCommerce Solutions Americas.  ***  #### Example Use Cases Simply Integrate in your existing website / solution  Easy integration into any eCommerce platform such as your Order Management System, Transportation Management System or an eCommerce website.  Merchants can use the API to get access to DHL Ecommerce Americas portfolio solution  Third Party Vendors (3PVs) and shipping aggregators can use the API to provide their customers with access to DHL ECommerce shipping solutions.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module DhlEcommerceClient
  class RequestaManifestforallpackagesBadrequest
    attr_accessor :type

    attr_accessor :title

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'title' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      return false if @title.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          title == o.title
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, title].hash
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
        temp_model = DhlEcommerceClient.const_get(type).new
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