class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def articles
  	@articles ||= begin
	  url = URI.parse("http://bayard.simplon.co/articles.json")
	  request = Net::HTTP.get(url)
	  JSON.parse(request)
	end
  end

end
