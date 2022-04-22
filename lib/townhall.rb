require 'nokogiri'
require 'pry'
require 'open-uri'

def init_url(page)
  page_to_return = Nokogiri::HTML(open(page))
  return page_to_return
end

def get_townhall_email(townhall_url)
  return init_url(townhall_url).xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
end

def get_townhall_urls

array_townhall_url = []
  init_url('http://annuaire-des-mairies.com/val-d-oise.html').css('a.lientxt').each do |node|
    array_townhall_url << node['href'][5..-1] 
  end
puts array_townhall_url
  
#page.xpath(xpath_mairies)['href']

  #puts  init_url('http://annuaire-des-mairies.com/val-d-oise.html').xpath('/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/@href')
   #puts =  init_url('http://annuaire-des-mairies.com/val-d-oise.html').xpath('/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[1]')[1]['href']

  #puts test
  #/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[1]
  #/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p
  #puts array_townhall_url
end


def perform
  get_townhall_urls
end


perform
