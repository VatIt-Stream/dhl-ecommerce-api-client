=begin
#DHL eCommerce's Duty and Tax Calculator

#DHL eCommerce’s Duty and Tax Calculator API calculates the total cost of a cross-border shipment. Fully Landed Costs are the total amount of costs of a cross border purchase including the price of the goods, shipping costs, customs duties, taxes, insurance, currency conversion, transaction fees, and any other service fees that might occur.  <strong><span style=\"color:#d40511;\">Note:</span></strong> The \"Try now!\" feature on this page is being finalized and will be available in the upcoming weeks. Nevertheless, The API is available and can be used by any client application (e.g. cURL, Postman, etc).

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for DhlEcommerceClient::SenderAddress
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SenderAddress' do
  before do
    # run before each test
    @instance = DhlEcommerceClient::SenderAddress.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SenderAddress' do
    it 'should create an instance of SenderAddress' do
      expect(@instance).to be_instance_of(DhlEcommerceClient::SenderAddress)
    end
  end
  describe 'test attribute "state"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "country"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end