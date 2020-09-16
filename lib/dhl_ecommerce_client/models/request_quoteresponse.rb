=begin
#DHL eCommerce's Duty and Tax Calculator

#DHL eCommerce’s Duty and Tax Calculator API calculates the total cost of a cross-border shipment. Fully Landed Costs are the total amount of costs of a cross border purchase including the price of the goods, shipping costs, customs duties, taxes, insurance, currency conversion, transaction fees, and any other service fees that might occur.  <strong><span style=\"color:#d40511;\">Note:</span></strong> The \"Try now!\" feature on this page is being finalized and will be available in the upcoming weeks. Nevertheless, The API is available and can be used by any client application (e.g. cURL, Postman, etc).

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module DhlEcommerceClient
  class RequestQuoteresponse
    attr_accessor :quote_id

    attr_accessor :item_seller

    attr_accessor :pricing_strategy

    attr_accessor :fee_totals

    attr_accessor :consignee_address

    attr_accessor :package_details

    attr_accessor :customs_details

    attr_accessor :sender_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'quote_id' => :'quoteId',
        :'item_seller' => :'itemSeller',
        :'pricing_strategy' => :'pricingStrategy',
        :'fee_totals' => :'feeTotals',
        :'consignee_address' => :'consigneeAddress',
        :'package_details' => :'packageDetails',
        :'customs_details' => :'customsDetails',
        :'sender_address' => :'senderAddress'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'quote_id' => :'String',
        :'item_seller' => :'String',
        :'pricing_strategy' => :'String',
        :'fee_totals' => :'Array<FeeTotal>',
        :'consignee_address' => :'ConsigneeAddress',
        :'package_details' => :'PackageDetails1',
        :'customs_details' => :'Array<CustomsDetail1>',
        :'sender_address' => :'SenderAddress'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'quoteId')
        self.quote_id = attributes[:'quoteId']
      end

      if attributes.has_key?(:'itemSeller')
        self.item_seller = attributes[:'itemSeller']
      end

      if attributes.has_key?(:'pricingStrategy')
        self.pricing_strategy = attributes[:'pricingStrategy']
      end

      if attributes.has_key?(:'feeTotals')
        if (value = attributes[:'feeTotals']).is_a?(Array)
          self.fee_totals = value
        end
      end

      if attributes.has_key?(:'consigneeAddress')
        self.consignee_address = attributes[:'consigneeAddress']
      end

      if attributes.has_key?(:'packageDetails')
        self.package_details = attributes[:'packageDetails']
      end

      if attributes.has_key?(:'customsDetails')
        if (value = attributes[:'customsDetails']).is_a?(Array)
          self.customs_details = value
        end
      end

      if attributes.has_key?(:'senderAddress')
        self.sender_address = attributes[:'senderAddress']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @quote_id.nil?
        invalid_properties.push('invalid value for "quote_id", quote_id cannot be nil.')
      end

      if @item_seller.nil?
        invalid_properties.push('invalid value for "item_seller", item_seller cannot be nil.')
      end

      if @pricing_strategy.nil?
        invalid_properties.push('invalid value for "pricing_strategy", pricing_strategy cannot be nil.')
      end

      if @fee_totals.nil?
        invalid_properties.push('invalid value for "fee_totals", fee_totals cannot be nil.')
      end

      if @consignee_address.nil?
        invalid_properties.push('invalid value for "consignee_address", consignee_address cannot be nil.')
      end

      if @package_details.nil?
        invalid_properties.push('invalid value for "package_details", package_details cannot be nil.')
      end

      if @customs_details.nil?
        invalid_properties.push('invalid value for "customs_details", customs_details cannot be nil.')
      end

      if @sender_address.nil?
        invalid_properties.push('invalid value for "sender_address", sender_address cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @quote_id.nil?
      return false if @item_seller.nil?
      return false if @pricing_strategy.nil?
      return false if @fee_totals.nil?
      return false if @consignee_address.nil?
      return false if @package_details.nil?
      return false if @customs_details.nil?
      return false if @sender_address.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          quote_id == o.quote_id &&
          item_seller == o.item_seller &&
          pricing_strategy == o.pricing_strategy &&
          fee_totals == o.fee_totals &&
          consignee_address == o.consignee_address &&
          package_details == o.package_details &&
          customs_details == o.customs_details &&
          sender_address == o.sender_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [quote_id, item_seller, pricing_strategy, fee_totals, consignee_address, package_details, customs_details, sender_address].hash
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