=begin
#API from Wineshipping

#Wineshipping API is a programmatically consumable service or an Application Programming Interface (API) platform designed to enable Wineshipping LLC's client applications to natively transmit and manage their order, view inventory, track shipments etc.<br /><br />In order to access API operations request a UserKey and Password from Wineshipping. For any questions please contact Wineshipping Helpdesk at <a href='mailto:IT-Help@wineshipping.com?Subject=API from Wineshipping'>IT-Help@wineshipping.com</a>.

OpenAPI spec version: V3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'spec_helper'
require 'json'

# Unit tests for WineShipping::TrackingApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TrackingApi' do
  before do
    # run before each test
    @instance = WineShipping::TrackingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrackingApi' do
    it 'should create an instance of TrackingApi' do
      expect(@instance).to be_instance_of(WineShipping::TrackingApi)
    end
  end

  # unit tests for get_details
  # This operation provides sales order and associated package tracking information and their status if available. This operation accepts a customer number and order number to locate the order information within the Wineshipping system. The result will include individual packages, associated tracking numbers, carrier status, and the shipping address information.
  # @param track_order 
  # @param [Hash] opts the optional parameters
  # @return [Array<TrackingResult>]
  describe 'get_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
