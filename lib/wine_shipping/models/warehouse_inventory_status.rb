=begin
#API from Wineshipping

#Wineshipping API is a programmatically consumable service or an Application Programming Interface (API) platform designed to enable Wineshipping LLC's client applications to natively transmit and manage their order, view inventory, track shipments etc.<br /><br />In order to access API operations request a UserKey and Password from Wineshipping. For any questions please contact Wineshipping Helpdesk at <a href='mailto:IT-Help@wineshipping.com?Subject=API from Wineshipping'>IT-Help@wineshipping.com</a>.

OpenAPI spec version: V3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module WineShipping
  class WarehouseInventoryStatus
    attr_accessor :customer_no

    attr_accessor :customer_name

    attr_accessor :item_no

    attr_accessor :item_description

    attr_accessor :item_unit

    attr_accessor :inventory_warehouse

    attr_accessor :inventory_status

    attr_accessor :on_hand_quantity

    attr_accessor :reserved_quantity

    attr_accessor :available_quantity

    attr_accessor :back_order_quantity

    attr_accessor :open_po_quantity

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customer_no' => :'CustomerNo',
        :'customer_name' => :'CustomerName',
        :'item_no' => :'ItemNo',
        :'item_description' => :'ItemDescription',
        :'item_unit' => :'ItemUnit',
        :'inventory_warehouse' => :'InventoryWarehouse',
        :'inventory_status' => :'InventoryStatus',
        :'on_hand_quantity' => :'OnHandQuantity',
        :'reserved_quantity' => :'ReservedQuantity',
        :'available_quantity' => :'AvailableQuantity',
        :'back_order_quantity' => :'BackOrderQuantity',
        :'open_po_quantity' => :'OpenPOQuantity'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'customer_no' => :'String',
        :'customer_name' => :'String',
        :'item_no' => :'String',
        :'item_description' => :'String',
        :'item_unit' => :'String',
        :'inventory_warehouse' => :'String',
        :'inventory_status' => :'String',
        :'on_hand_quantity' => :'Integer',
        :'reserved_quantity' => :'Integer',
        :'available_quantity' => :'Integer',
        :'back_order_quantity' => :'Integer',
        :'open_po_quantity' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'CustomerNo')
        self.customer_no = attributes[:'CustomerNo']
      end

      if attributes.has_key?(:'CustomerName')
        self.customer_name = attributes[:'CustomerName']
      end

      if attributes.has_key?(:'ItemNo')
        self.item_no = attributes[:'ItemNo']
      end

      if attributes.has_key?(:'ItemDescription')
        self.item_description = attributes[:'ItemDescription']
      end

      if attributes.has_key?(:'ItemUnit')
        self.item_unit = attributes[:'ItemUnit']
      end

      if attributes.has_key?(:'InventoryWarehouse')
        self.inventory_warehouse = attributes[:'InventoryWarehouse']
      end

      if attributes.has_key?(:'InventoryStatus')
        self.inventory_status = attributes[:'InventoryStatus']
      end

      if attributes.has_key?(:'OnHandQuantity')
        self.on_hand_quantity = attributes[:'OnHandQuantity']
      end

      if attributes.has_key?(:'ReservedQuantity')
        self.reserved_quantity = attributes[:'ReservedQuantity']
      end

      if attributes.has_key?(:'AvailableQuantity')
        self.available_quantity = attributes[:'AvailableQuantity']
      end

      if attributes.has_key?(:'BackOrderQuantity')
        self.back_order_quantity = attributes[:'BackOrderQuantity']
      end

      if attributes.has_key?(:'OpenPOQuantity')
        self.open_po_quantity = attributes[:'OpenPOQuantity']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          customer_no == o.customer_no &&
          customer_name == o.customer_name &&
          item_no == o.item_no &&
          item_description == o.item_description &&
          item_unit == o.item_unit &&
          inventory_warehouse == o.inventory_warehouse &&
          inventory_status == o.inventory_status &&
          on_hand_quantity == o.on_hand_quantity &&
          reserved_quantity == o.reserved_quantity &&
          available_quantity == o.available_quantity &&
          back_order_quantity == o.back_order_quantity &&
          open_po_quantity == o.open_po_quantity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [customer_no, customer_name, item_no, item_description, item_unit, inventory_warehouse, inventory_status, on_hand_quantity, reserved_quantity, available_quantity, back_order_quantity, open_po_quantity].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
