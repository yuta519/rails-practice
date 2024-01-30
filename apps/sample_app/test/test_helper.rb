# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/reporters'
Minitest::Reporters.use!

# ActiveSupport::TestCase is the base class for all tests in Rails.
module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all
    include ApplicationHelper

    def is_logged_in? # rubocop:disable Naming/PredicateName
      !session[:user_id].nil?
    end
  end
end
