class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :daily_reading
  
  def daily_reading
    links = ActiveSupport::OrderedHash.new
    links["ESPN"]          = {:url => "http://www.espn.com", :description => "Scores and NFL blogs, my addiction."}
    links["CNN"]           = {:url => "http://www.cnn.com", :description => "Mostly headlines."}
    links
  end
end
