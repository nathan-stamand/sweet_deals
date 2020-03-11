class SweetDeals::CLI
    attr_accessor :deals
    def call
        list_deals
        menu
        goodbye
    end

    def list_deals 
        @deals = SweetDeals::Deal.all
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