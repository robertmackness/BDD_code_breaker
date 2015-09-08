#
# Test Doubles
#
class Output2 #Output 2 as RSpec has a built-in Output class
              #that confuses Cucumber method matching
  def messages
    @messages ||= []
  end
  
  def puts(message)
    messages << message
  end
end

def output2
  @output2 ||= Output2.new
end


#
# Step Definitions
#

Given /^I am not yet playing$/ do
end

  When /^I start a new game$/ do
    game = Codebreaker::Game.new(output2)
    game.start('1234')
  end

  Then /^I should see "([^"]*)"$/ do |message|
    expect(output2.messages).to include(message)
  end
#
#
Given /^the secret code is "([^"]*)"$/ do |secret|
  @game = Codebreaker::Game.new(output2)
  @game.start(secret)
end

  When /^I guess "([^"]*)"$/ do |guess|
    @game.guess(guess)
  end

  Then /^the mark should be "([^"]*)"$/ do |mark|
    expect(output2.messages).to include(mark)
  end