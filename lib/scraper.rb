require 'nokogiri'
require 'open-uri'
require "pry"

doc = Nokogiri::HTML(open("http://flatironschool.com/"))
doc.css(".site-header__hero__headline")
puts doc.css(".site-header__hero__headline").text.strip
binding.pry
