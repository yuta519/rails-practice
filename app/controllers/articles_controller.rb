#!/usr/bin/env ruby
# frozen_string_literal: true

# https://guides.rubyonrails.org/getting_started.html
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
end
