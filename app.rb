# app.rb
require 'sinatra'
require 'sinatra/activerecord'
require './models/article'

# Read all articles
get '/articles' do
  articles = Article.all
  articles.to_json
end

# Create a new article
post '/articles' do
  article = Article.new(params[:article])
  if article.save
    status 201
    article.to_json
  else
    status 422
    article.errors.to_json
  end
end

# Read a single article
get '/articles/:id' do
  article = Article.find(params[:id])
  article.to_json
end

# Update an article
put '/articles/:id' do
  article = Article.find(params[:id])
  if article.update(params[:article])
    status 200
    article.to_json
  else
    status 422
    article.errors.to_json
  end
end

# Delete an article
delete '/articles/:id' do
  article = Article.find(params[:id])
  article.destroy
  status 204
end
