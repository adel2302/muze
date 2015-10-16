class ArticlesController < ApplicationController
	require 'net/http'

  def home
    params[:page] = params[:page].to_i || 0
    if articles.size >= 1
      @article = articles[params[:page]]
    else
      flash[:error] = "No article found"
      return false
    end 
    #@test = "valeur articles #{articles}"
  end

  def show
    @article = articles.find { |a| a['id'] == params['id'].to_i }
  end
end

