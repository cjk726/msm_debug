Rails.application.routes.draw do
  # Route for bare domain:
  get('/', { :controller => 'movies', :action => 'index' })                                 # Good

  # Routes for the Director resource:
  # CREATE
  get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })         # Good
  get('/create_director', { :controller => 'directors', :action => 'create_row' })          # Good    

  # READ
  get('/directors', { :controller => 'directors', :action => 'index' })                     # Good
  get('/directors/:id', { :controller => 'directors', :action => 'show' })                  # Good

  # UPDATE
  get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
  get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

  # DELETE
  get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })         # Good
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })               # Good
  get('/create_movie', { :controller => 'movies', :action => 'create_row' })                # Good

  # READ
  get('/movies', { :controller => 'movies', :action => 'index' })                           # Good
  get('/movies/:id', { :controller => 'movies', :action => 'show' })                        # Good

  # UPDATE
  get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })         # Good
  get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })            # Good

  # DELETE
  get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })               # Good
  #------------------------------

  # Routes for the Role resource:
  # CREATE
  get('/roles/new_form', { :controller => 'roles', :action => 'new_form' })
  get('/create_role', { :controller => 'roles', :action => 'create_row' })

  # READ
  get('/roles', { :controller => 'roles', :action => 'index' })
  get('/roles/:id', { :controller => 'roles', :action => 'show' })

  # UPDATE
  get('/roles/:id/edit_form', { :controller => 'roles', :action => 'edit_form' })
  get('/update_role/:id', { :controller => 'roles', :action => 'update_row' })

  # DELETE
  get('/delete_role/:id', { :controller => 'roles', :action => 'destroy' })
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
  get('/create_actor', { :controller => 'actors', :action => 'create_row' })

  # READ
  get('/actors', { :controller => 'actors', :action => 'index' })                           # Good
  get('/actors/:id', { :controller => 'actors', :action => 'show' })                        # Good

  # UPDATE
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })

  # DELETE
  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })
  #------------------------------
  mount WebGit::Engine, at: "/rails/git"
end
