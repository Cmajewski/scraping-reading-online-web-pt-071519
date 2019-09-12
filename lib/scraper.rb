require 'nokogiri'
require 'open-uri'
require "pry"

doc = Nokogiri::HTML(open("http://flatironschool.com/"))
doc.css(".site-header__hero__headline")
puts doc.css(".site-header__hero__headline").text.strip
binding.pry
courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end
