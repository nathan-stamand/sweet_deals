class Scraper  

    def self.get_deals

        doc = Nokogiri::HTML(open('https://www.zzounds.com/blowouts')).css('div#super-hot').css('div.span-63.prepend-top.prepend-1.append-1.row')
        
        i = 0
        j = doc.css('a').length.to_i

        j.times do |row|
        
            name = doc.css('a')[i].text
            url = doc.css('a')[i].attr('href')
            price = doc.css('span.price')[i].text
            details = doc.css('span.span-15')[i].text

            SweetDeals::Deal.new(name, price, details, url)
            
            i += 1
            
        end

    end 

    def self.get_more_info(deal) 
        doc = Nokogiri::HTML(open(deal.url)).css('div#tab-product-overview').text
    end 

end 