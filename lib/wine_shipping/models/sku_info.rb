=begin
#API from Wineshipping

#Wineshipping API is a programmatically consumable service or an Application Programming Interface (API) platform designed to enable Wineshipping LLC's client applications to natively transmit and manage their order, view inventory, track shipments etc.<br /><br />In order to access API operations request a user key and password from Wineshipping. For any questions please contact Wineshipping Helpdesk at <a href='mailto:IT-Help@wineshipping.com?Subject=API from Wineshipping'>IT-Help@wineshipping.com</a>.

OpenAPI spec version: V3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13

=end

require 'date'

module WineShipping
  class SKUInfo
    attr_accessor :item_category

    attr_accessor :item_no

    attr_accessor :item_description

    attr_accessor :vintage

    attr_accessor :varietal

    attr_accessor :appellation

    attr_accessor :value

    attr_accessor :alcohol_by_volume

    attr_accessor :upc_code

    attr_accessor :uom

    attr_accessor :num_bottle_in_each_case

    attr_accessor :classification

    attr_accessor :comments

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'item_category' => :'ItemCategory',
        :'item_no' => :'ItemNo',
        :'item_description' => :'ItemDescription',
        :'vintage' => :'Vintage',
        :'varietal' => :'Varietal',
        :'appellation' => :'Appellation',
        :'value' => :'Value',
        :'alcohol_by_volume' => :'AlcoholByVolume',
        :'upc_code' => :'UPCCode',
        :'uom' => :'UOM',
        :'num_bottle_in_each_case' => :'NumBottleInEachCase',
        :'classification' => :'Classification',
        :'comments' => :'Comments'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'item_category' => :'Integer',
        :'item_no' => :'String',
        :'item_description' => :'String',
        :'vintage' => :'String',
        :'varietal' => :'String',
        :'appellation' => :'String',
        :'value' => :'String',
        :'alcohol_by_volume' => :'String',
        :'upc_code' => :'String',
        :'uom' => :'String',
        :'num_bottle_in_each_case' => :'String',
        :'classification' => :'String',
        :'comments' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'ItemCategory')
        self.item_category = attributes[:'ItemCategory']
      end

      if attributes.has_key?(:'ItemNo')
        self.item_no = attributes[:'ItemNo']
      end

      if attributes.has_key?(:'ItemDescription')
        self.item_description = attributes[:'ItemDescription']
      end

      if attributes.has_key?(:'Vintage')
        self.vintage = attributes[:'Vintage']
      end

      if attributes.has_key?(:'Varietal')
        self.varietal = attributes[:'Varietal']
      end

      if attributes.has_key?(:'Appellation')
        self.appellation = attributes[:'Appellation']
      end

      if attributes.has_key?(:'Value')
        self.value = attributes[:'Value']
      end

      if attributes.has_key?(:'AlcoholByVolume')
        self.alcohol_by_volume = attributes[:'AlcoholByVolume']
      end

      if attributes.has_key?(:'UPCCode')
        self.upc_code = attributes[:'UPCCode']
      end

      if attributes.has_key?(:'UOM')
        self.uom = attributes[:'UOM']
      end

      if attributes.has_key?(:'NumBottleInEachCase')
        self.num_bottle_in_each_case = attributes[:'NumBottleInEachCase']
      end

      if attributes.has_key?(:'Classification')
        self.classification = attributes[:'Classification']
      end

      if attributes.has_key?(:'Comments')
        self.comments = attributes[:'Comments']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      item_category_validator = EnumAttributeValidator.new('Integer', ['1', '2', '3'])
      return false unless item_category_validator.valid?(@item_category)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_category Object to be assigned
    def item_category=(item_category)
      validator = EnumAttributeValidator.new('Integer', ['1', '2', '3'])
      unless validator.valid?(item_category)
        fail ArgumentError, 'invalid value for "item_category", must be one of #{validator.allowable_values}.'
      end
      @item_category = item_category
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          item_category == o.item_category &&
          item_no == o.item_no &&
          item_description == o.item_description &&
          vintage == o.vintage &&
          varietal == o.varietal &&
          appellation == o.appellation &&
          value == o.value &&
          alcohol_by_volume == o.alcohol_by_volume &&
          upc_code == o.upc_code &&
          uom == o.uom &&
          num_bottle_in_each_case == o.num_bottle_in_each_case &&
          classification == o.classification &&
          comments == o.comments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [item_category, item_no, item_description, vintage, varietal, appellation, value, alcohol_by_volume, upc_code, uom, num_bottle_in_each_case, classification, comments].hash
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
        temp_model = WineShipping.const_get(type).new
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
