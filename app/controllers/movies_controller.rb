# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    render jsonapi: Movie.order(created_at: :desc)
  end
end
