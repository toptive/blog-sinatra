require 'sinatra'
require 'sequel'

DB = Sequel.sqlite('database.db')

# Define your Post model
DB.create_table? :posts do
  primary_key :id
  String :title, null: false
  Text :content, null: false
  DateTime :created_at, default: Sequel::CURRENT_TIMESTAMP
end

class Post < Sequel::Model
end

# Routes
get '/' do
  @posts = Post.all
  erb :index
end
