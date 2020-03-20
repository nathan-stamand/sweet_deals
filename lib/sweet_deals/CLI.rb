class SweetDeals::CLI
    attr_accessor :deals

    def call
        Scraper.get_deals
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
            if input == 'list'
                list_deals
            elsif input.to_i > 0 && input.to_i < @deals.length + 1
                    j = input.to_i - 1 
                    puts "#{@deals[j].number}. #{@deals[j].name}"
                    puts "   #{@deals[j].price}"
                    puts "   #{@deals[j].details}"
                    puts "   #{@deals[j].url}"
                    puts "#{Scraper.get_more_info(@deals[j])}"
            end
        end
    end

    def goodbye
        puts "Thank you for using SweetDeals, goodbye!"
    end
end