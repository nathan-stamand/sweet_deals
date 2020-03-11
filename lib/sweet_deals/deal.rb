class SweetDeals::Deal 
    attr_accessor :name, :price, :rating, :url
    @@all = [] 

    def self.all 
        puts "Here are the deals of the day:"
        deal_1 = self.new
        deal_1.name = 'Shure microphone'
        deal_1.price = '$245'
        deal_1.rating = '4.2 Stars'
        deal_1.url = 'sweetwater.com/deals'
        @@all << deal_1 
        @@all
    end 

end 
