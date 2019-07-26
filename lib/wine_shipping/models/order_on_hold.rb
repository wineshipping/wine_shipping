=begin
#API from Wineshipping

#Wineshipping API is a programmatically consumable service or an Application Programming Interface (API) platform designed to enable Wineshipping LLC's client applications to natively transmit and manage their order, view inventory, track shipments etc.<br /><br />In order to access API operations request a UserKey and Password from Wineshipping. For any questions please contact Wineshipping Helpdesk at <a href='mailto:IT-Help@wineshipping.com?Subject=API from Wineshipping'>IT-Help@wineshipping.com</a>.

OpenAPI spec version: V3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module WineShipping
  class OrderOnHold
    attr_accessor :customer_no

    attr_accessor :customer_name

    attr_accessor :order_no

    attr_accessor :order_type

    attr_accessor :order_date

    attr_accessor :shipment_date

    attr_accessor :shipping_site

    attr_accessor :shipping_warehouse

    attr_accessor :hold_reason

    attr_accessor :shipping_carrier

    attr_accessor :shipping_carrier_service

    attr_accessor :order_on_hold_items

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customer_no' => :'CustomerNo',
        :'customer_name' => :'CustomerName',
        :'order_no' => :'OrderNo',
        :'order_type' => :'OrderType',
        :'order_date' => :'OrderDate',
        :'shipment_date' => :'ShipmentDate',
        :'shipping_site' => :'ShippingSite',
        :'shipping_warehouse' => :'ShippingWarehouse',
        :'hold_reason' => :'HoldReason',
        :'shipping_carrier' => :'ShippingCarrier',
        :'shipping_carrier_service' => :'ShippingCarrierService',
        :'order_on_hold_items' => :'OrderOnHoldItems'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'customer_no' => :'String',
        :'customer_name' => :'String',
        :'order_no' => :'String',
        :'order_type' => :'String',
        :'order_date' => :'String',
        :'shipment_date' => :'String',
        :'shipping_site' => :'String',
        :'shipping_warehouse' => :'String',
        :'hold_reason' => :'String',
        :'shipping_carrier' => :'String',
        :'shipping_carrier_service' => :'String',
        :'order_on_hold_items' => :'Array<OrderOnHoldItem>'
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

      if attributes.has_key?(:'OrderNo')
        self.order_no = attributes[:'OrderNo']
      end

      if attributes.has_key?(:'OrderType')
        self.order_type = attributes[:'OrderType']
      end

      if attributes.has_key?(:'OrderDate')
        self.order_date = attributes[:'OrderDate']
      end

      if attributes.has_key?(:'ShipmentDate')
        self.shipment_date = attributes[:'ShipmentDate']
      end

      if attributes.has_key?(:'ShippingSite')
        self.shipping_site = attributes[:'ShippingSite']
      end

      if attributes.has_key?(:'ShippingWarehouse')
        self.shipping_warehouse = attributes[:'ShippingWarehouse']
      end

      if attributes.has_key?(:'HoldReason')
        self.hold_reason = attributes[:'HoldReason']
      end

      if attributes.has_key?(:'ShippingCarrier')
        self.shipping_carrier = attributes[:'ShippingCarrier']
      end

      if attributes.has_key?(:'ShippingCarrierService')
        self.shipping_carrier_service = attributes[:'ShippingCarrierService']
      end

      if attributes.has_key?(:'OrderOnHoldItems')
        if (value = attributes[:'OrderOnHoldItems']).is_a?(Array)
          self.order_on_hold_items = value
        end
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
          order_no == o.order_no &&
          order_type == o.order_type &&
          order_date == o.order_date &&
          shipment_date == o.shipment_date &&
          shipping_site == o.shipping_site &&
          shipping_warehouse == o.shipping_warehouse &&
          hold_reason == o.hold_reason &&
          shipping_carrier == o.shipping_carrier &&
          shipping_carrier_service == o.shipping_carrier_service &&
          order_on_hold_items == o.order_on_hold_items
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [customer_no, customer_name, order_no, order_type, order_date, shipment_date, shipping_site, shipping_warehouse, hold_reason, shipping_carrier, shipping_carrier_service, order_on_hold_items].hash
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
