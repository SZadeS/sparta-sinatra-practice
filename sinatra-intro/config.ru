require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?
# development?
require_relative "controllers/posts_controller.rb"

run PostsController
