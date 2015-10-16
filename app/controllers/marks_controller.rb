class MarksController < ApplicationController
  def home
  	@marks = Mark.all
  	@mark = Mark.find_by_article_id(params[:id])
  	articles
  end

  def create
  	Mark.create user_id: current_user.id, article_id: params[:id_article]
  	redirect_to '/'
  end
end
