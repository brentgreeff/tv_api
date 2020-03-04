class MoviesController < ApplicationController

  def index
    render jsonapi: Movie.order(created_at: :desc)
  end
end
