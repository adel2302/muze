class ArticlesController < ApplicationController
	require 'net/http'
  def home
    params[:page] = params[:page].to_i || 0
  	url = URI.parse("http://bayard.simplon.co/articles.json")

    request = Net::HTTP.get(url)
    articles = JSON.parse(request)

    if articles.size >= 1
      @article = articles[params[:page]]
    else
      flash[:error] = "No article found"
      return false
    end 
  end
end

