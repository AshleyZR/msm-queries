class MiscController < ApplicationController
  def homepage
    render({ :template => "misc_templates/home"})
  end
  
  def directors_page
    render({:template => "misc_templates/directors_page"})
  end

  def director_page
    director_id = params.fetch("director_id")
    @profile = Director.where({:id => director_id}).first
    render({:template => "misc_templates/director_page"})
  end

  def movies_page
    render({:template => "misc_templates/movies_page"})
  end

  def movie_page
    movie_id = params.fetch("movie_id")
    @profile = Movie.where({:id => movie_id}).first
    render({:template => "misc_templates/movie_page"})
  end

  def actors_page
    render({:template => "misc_templates/actors_page"})
  end

  def actor_page
    actor_id = params.fetch("actor_id")
    @profile = Actor.where({:id => actor_id}).first
    render({:template => "misc_templates/actor_page"})
  end

  def eldest_page
    valid_dob = Director.where.not({ :dob => nil })
    @profile = Director.all.order(:dob => :desc).first
    render({:template => "misc_templates/eldest_page"})
  end 

  def youngest_page
    valid_dob = Director.where.not({:dob => nil })
    @profile = valid_dob.all.order(:dob => :asc).first
    render({:template => "misc_templates/youngest_page"})
  end 
end
