require 'codebreaker'

module Codebreaker

  class Game

    def initialize(output2)
      @output2 = output2
    end
    
    def start(secret)
      @secret = secret
      @output2.puts 'Welcome to Codebreaker!'
      @output2.puts 'Enter 4 digit guess (between 1-6):'
    end
    
    def generate_random_secret
      random_secret = []
      4.times do |n|
        n = rand(1..6)
        random_secret << n
      end
      random_secret.join
    end

    def guess(guess)
      marker = Marker.new(@secret, guess)

      if (marker.exact_match_count + marker.number_match_count) != 0
        @output2.puts '+'*marker.exact_match_count +
        '-'*marker.number_match_count
      else
        @output2.puts "No matches, try again"
      end

    end

  end

end