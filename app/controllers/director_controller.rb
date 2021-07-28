class DirectorController < ApplicationController
  def index
    @list_of_directors = Director.all

    render({:template => "director_templates/index.html.erb"})
  end

  def wisest
    @clean_directors = Director.where.not({:dob => nil})
    @clean_directors_sorted = @clean_directors.order({:dob => :asc})
    @wisest = @clean_directors_sorted.at(0)
    render({:template => "director_templates/eldest.html.erb"})
  end

  def youngest
    @youngest = Director.order({:dob => :desc}).at(0)

    render({:template => "director_templates/youngest.html.erb"})
  end

  def director_details
    @the_id = params.fetch("an_id")

    @the_director = Director.where( {:id => @the_id} ).at(0)
    @filmography = Movie.where( {:director_id => @the_director.id})

    render({:template => "director_templates/show_director.html.erb"})
  end
end
