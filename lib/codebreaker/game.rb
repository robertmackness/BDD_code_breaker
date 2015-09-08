require 'codebreaker'

module Codebreaker

  class Game

    def initialize(output2)
      @output2 = output2
    end
    
    def start(secret)
      @secret = secret
      @output2.puts 'Welcome to Codebreaker!'
      @output2.puts 'Enter guess:'
    end
    
    def guess(guess)
      marker = Marker.new(@secret, guess)
      @output2.puts '+'*marker.exact_match_count +
                    '-'*marker.number_match_count
    end

  end

end