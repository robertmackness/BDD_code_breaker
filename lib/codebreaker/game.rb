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
      mark = ''
      (0..3).each do |index|
        if exact_match?(guess, index)
          mark << '+'
        end
      end
      (0..3).each do |index|
        if number_match?(guess, index)
          mark << '-'
        end
      end
      @output2.puts(mark)
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def number_match?(guess, index)
      @secret.include?(guess[index]) && @secret[index] != guess[index]
    end

  end
end