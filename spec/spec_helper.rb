require 'rspec'
require 'tempfile'
require 'cfndsl'
require 'json'
require_relative '../lib/cfnlego'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:each) do
    @log_fd = StringIO.new
  end
end
