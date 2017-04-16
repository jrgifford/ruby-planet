require 'rss'
require 'httparty'

response = HTTParty.get 'https://threatpost.com/feed/'

feed = RSS::Parser.parse response.body

feed.items.each do |item|
  puts "Title: #{item.title}"
  puts "URL: #{item.link}"
  puts item.description
end
