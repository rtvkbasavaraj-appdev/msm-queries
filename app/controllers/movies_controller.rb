class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render(:template => "movies_templates/index.html.erb")
  end

  def movie_details
    @the_movie_id = params.fetch("an_id")

    @the_movie = Movie.where( {:id => @the_movie_id} ).at(0)

    render(:template => "movies_templates/show_movie.html.erb")
  end
end