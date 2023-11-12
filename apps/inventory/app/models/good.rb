# frozen_string_literal: true

# Good Model
class Good < ApplicationRecord
  belongs_to :owner, class_name: 'User'

  def self.categories
    %w[Vegetable Dairy Meat Beverage Ingredient].freeze
  end

  validates :category, inclusion: { in: categories }
end
