class SweetDeals::CLI
    attr_accessor :deals
    def call
        list_deals
        menu
        goodbye
    end

    def list_deals 
        @deals = SweetDeals::Deal.all
        i = 1
        j = 0
        @deals.each do |deal|
            puts "#{i}. #{@deals[j].name}"
            puts "   #{@deals[j].price}"
            puts "   #{@deals[j].rating}"
            puts "   #{@deals[j].url}"
            i += 1
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