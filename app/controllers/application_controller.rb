class ApplicationController < ActionController::Base
  protect_from_forgery
  
  helper_method :daily_reading, :my_products, :my_code
  
  # Links to websites I read daily
  def daily_reading
    links = ActiveSupport::OrderedHash.new
    links["ESPN"]          = {:url => "http://www.espn.com", :description => "Scores and NFL blogs, my addiction."}
    links["CNN"]           = {:url => "http://www.cnn.com", :description => "Most of the time, I'm reading headlines."}
    links
  end
  
  # My products
  def my_products
    links = ActiveSupport::OrderedHash.new
    links["BatStatz"] = {:description => "A tool for youth baseball coaches to keep track of their team's statistics. Parents also get a team website for their kids."}
    links
  end
  
  # Small hacks with link to Github
  def my_code
    links = ActiveSupport::OrderedHash.new
    links["Beer for Textbooks"] = {:url => "http://www.beerfortextbooks.com", :description => "A website I built during a Startup Weekend. The title says it all."}
    links["Easy Unfriend"] = {:url => "https://chrome.google.com/webstore/detail/gghpnhoakonhhpjbalfjgmfkejaiidih?ct=author", :github => "https://github.com/djhopper01/Easy-Unfriend", :description => "A Chrome extension that helps you unfriend people on Facebook."}
    links["Shoutfire"] = {:github => "https://github.com/djhopper01/shoutfire", :description => "An Android application with a MySQL/PHP backend. Users chat with each other, but only see the last 100 messages."}
    links
  end
end
