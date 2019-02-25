require "net/http"
require "nokogiri"
require "sinatra"

if Sinatra::Base.development?
  require "pry"
  require "dotenv"
  Dotenv.load ".env.local"
end

not_found do
  status 404
  ""
end

get "/rss.atom" do
  if not ENV["SECRET"].nil? and params[:secret] != ENV["SECRET"]
    return not_found
  end

  if ENV["RSS_URL"].nil? or ENV["REMOVE_KEYWORDS"].nil?
    return "Missing ENV variables"
  end

  rss = URI.parse(ENV["RSS_URL"])
  keywords = ENV["REMOVE_KEYWORDS"].split ","

  contents = Net::HTTP.get rss
  nodes = Nokogiri::XML contents

  nodes.css("entry")
    .select { |node|
      url = node.css("link").first["href"]
      keywords.any? { |keyword| url.include? keyword }
    }
    .each(&:remove)

  content_type "application/atom+xml; charset=utf-8"
  nodes.to_xml.gsub /^\s+\n/, "" # remove empty lines
end
