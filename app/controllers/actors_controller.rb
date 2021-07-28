class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({:template => "actors_templates/index.html.erb"})
  end

  def actor_details
    @the_actor_id = params.fetch("an_id")
    @the_actor = Actor.where({:id => @the_actor_id}).at(0)

    @character_list = Character.where({:actor_id => @the_actor_id})

    render({:template => "actors_templates/show_actor.html.erb"})
  end
end
