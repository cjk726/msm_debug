class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])             # switched from "" to :
  end

  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]                 # switched from "" to :
    @movie.year = params[:year]                   # switched from "" to :
    @movie.duration = params[:duration]           # switched from "" to :
    @movie.description = params[:description]     # switched from "" to :
    @movie.image_url = params[:image_url]         # switched from "" to :
    @movie.director_id = params[:director_id]     # switched from "" to :

    @movie.save
  
    render("show")
    # redirect_to("/movies")                JD has render line above
  end

  def edit_form
    @movie = Movie.find(params[:id])       # switched from "" to :
    
    # render("edit_form.html.erb")           not in JD's
  end

  def update_row

    @movie = Movie.find(params["id"])             # switched from "" to :
    @movie.title = params["title"]                # switched from "" to :
    @movie.year = params["year"]                  # switched from "" to :
    @movie.duration = params["duration"]          # switched from "" to :
    @movie.description = params["description"]    # switched from "" to :
    @movie.image_url = params["image_url"]        # switched from "" to :
    @movie.director_id = params["director_id"]    # switched from "" to :
    @movie.save
    
    render("show")
  #  redirect_to("/movies/"+@movie.id.to_s)        # JD has render line above
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    
    redirect_to("/movies")
  end


end
