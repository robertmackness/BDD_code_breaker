require 'spec_helper'

module Codebreaker

  describe Game do 
    describe '#start' do
      it "sends a welcome message" do
        output2 = double('output2')
        game = Game.new(output2)
        expect(output2).to receive(:puts).with('Welcome to Codebreaker!')
        game.start
      end
      it "prompts for the first guess" do
        output2 = double("output2")
        game = Game.new(output2)
        expect(output2).to receive(:puts).with('Enter guess:')
        game.start
      end
    end
  end
end