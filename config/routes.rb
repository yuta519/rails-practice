# frozen_string_literal: true

Rails.application.routes.draw do
  get 'articles', to: 'articles#index'
  get 'articles/:id', to: 'articles#show'
end
