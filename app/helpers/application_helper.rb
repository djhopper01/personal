module ApplicationHelper
  def display_links(links)
    html = ""
    
    links.each do |name, info|
      html << "<li>"
      if info.has_key? :url
        html << link_to(name, info[:url])
      else
        html << "<span class='important'>#{name}</span>"
      end
      html << " <span>#{info[:description]}</span>"
      if info.has_key? :github
        html << "<br/>"
        html << "(#{link_to "Github", info[:github], :class => "faded"})"
      end
      html << "</li>"
    end
    raw html
  end
end
