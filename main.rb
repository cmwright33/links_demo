require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end


get '/manual_links' do
    @links = ['http://reddit.com', 'http://www.deadspin.com', 'http://cnn.com', 'http://www.gizmodo.com', 'http://www.slate.com']
    erb :links
end

get '/about' do
  "This is me"
end

get '/new_link' do
  erb :new_link
end

get '/new_link' do
  @link_name = params[:name]
  @link = params[]
  f.File.new('links.csv', 'a+')
  redirect to ('links.csv')


get '/links' do
  link_file = File.new('links.csv', 'r')
  @links = []
  link_file.each do |link|
    @links << link.split(',')
  end
  link_file.close
  erb :links
end
  post '/navigate' do
   case params[:destination].downcase
    when "links" then redirect to("/links")
    when "about" then redirect to("/about")
  end
    redirect to("/")
end