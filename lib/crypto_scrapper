require 'nokogiri'
require 'pry'
require 'open-uri'

def init_url(page)
  page_to_return = Nokogiri::HTML(open(page))
  return page_to_return
end

def get_cryptocurrencies_values
  names = []
  init_url("https://coinmarketcap.com/all/views/all/").xpath('//tbody/tr[*]/td[3]/*').each do |node|
    names << node.text
  end

  prices = []
  init_url("https://coinmarketcap.com/all/views/all/").xpath('//tbody/tr[*]/td[5]/*').each do |node|
    prices << node.text
  end

  hash = names.zip(prices)

  #puts hash.to_a
  return hash.to_a
   
end
