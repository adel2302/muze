class MarksController < ApplicationController
  def home
  	@marks = Mark.all
  	articles
  end

  def create
  	Mark.create user_id: current_user.id, article_id: params[:id_article]
  	redirect_to '/'
  end
end
