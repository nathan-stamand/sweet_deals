class SweetDeals::Deal 
    attr_accessor :name, :price, :details, :url, :number
    @@all = [] 

    def initialize(name, price, details, url)
        @name = name
        @price = price 
        @details = details
        @url = url 
        @number = @@all.length + 1
        @@all << self
    end 

    def self.create_new(name, price, details, url)
        new_deal = self.new(name, price, details, url)
        # new_deal.number = @@all.length + 1
        # @@all << new_deal
    end

    def self.all 
        puts "Welcome to SweetDeals! Here are your daily sweet deals!"
        @@all
    end 

end 
