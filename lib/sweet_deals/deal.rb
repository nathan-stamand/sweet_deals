class SweetDeals::Deal 
    attr_accessor :name, :price, :rating, :url, :number
    @@all = [] 

    def initialize(name, price, rating, url)
        @name = name
        @price = price 
        @rating = rating 
        @url = url 
        @number = @@all.length
        @@all << self
    end 

    def self.all 
        puts "Here are the deals of the day:"
        @@all
    end 

end 
