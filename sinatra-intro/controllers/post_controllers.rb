class PostsController < Sinatra::Base
  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
#this was merely done to manipulate the location of files- ignore
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $languages = [{
    	 id: 0,
    	 title: "HTML",
    	 body: "This is the first thing learned"
    },
    {
        id: 1,
        title: "CSS",
        body: "This is the second thing learned"
    },
    {
        id: 2,
        title: "JavaScript",
        body: "This is the third thing learned"
    }];

  # INDEX
  get "/" do
    @title = "Languages Learned"
    @languages = $languages
    erb :"posts/index"
  end

  # NEW
  get "/new" do
    erb :"posts/index"
  end

  # SHOW
  get "/:id" do
    id = params[:id].to_i
    @language = $languages[id]

    erb :"posts/show"
  end

  # CREATE
  post "/" do
    "This is the create route!"
  end

  # EDIT
  get "/:id/edit" do
    id = params[:id]
    "This is the edit route for #{id}"
  end

  # UPDATE
  put "/:id" do
    id = params[:id]
    "This is the update route for #{id}"
  end

  # DESTROY
  delete "/:id" do
    id = params[:id]
    "This is the delete route for #{id}"
  end

end
