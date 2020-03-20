class SweetDeals::CLI
    attr_accessor :deals

    def call
        Scraper.new.get_deals
        list_deals
        menu
        goodbye
    end

    def list_deals 
        @deals = SweetDeals::Deal.all
        j = 0
        @deals.each do |deal|
            puts "#{@deals[j].number}. #{@deals[j].name}"
            puts "   #{@deals[j].price}"
            puts "   #{@deals[j].details}"
            puts "   #{@deals[j].url}"
            j += 1
        end
        return
    end

    def menu
        puts "Enter the number you want more info on it, type 'list' to see the full list again, or type 'exit' to exit the app."
        input = nil
        while input != 'exit'
            input = gets.strip
            case input
                when '1'
                    puts 'more info on deal 1...'
                when 'list'
                    list_deals
            end
            
        end
    end

    def goodbye
        puts "Thank you for using SweetDeals, goodbye!"
    end
end