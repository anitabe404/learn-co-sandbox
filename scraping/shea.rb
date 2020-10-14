require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://www.sheamoisture.com/products/hair.html?cat=48")
doc = Nokogiri::HTML(html)

products = {}
counter = 1

doc.css("li.item.product.product-item").each do |product|
  name = product.css("strong.product.name.product-item-name a").text
  products[name.to_sym] = {
    :price => product.css("span.price").text
  }
end
binding.pry