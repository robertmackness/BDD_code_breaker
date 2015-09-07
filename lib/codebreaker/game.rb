require 'codebreaker'

module Codebreaker
  class Game
   def initialize (output2)
    @output2 = output2
   end
   def start
    @output2.puts 'Welcome to Codebreaker!'
    @output2.puts 'Enter guess:'
   end
 end
end