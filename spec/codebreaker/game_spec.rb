require 'spec_helper'

module Codebreaker

  describe Game do 

    let(:output2) {double('output2').as_null_object}
    let(:game) {Game.new(output2)}
    
    describe "#start" do
      it "sends a welcome message" do
        expect(output2).to receive(:puts).with('Welcome to Codebreaker!')
        game.start('1234')
      end

      it "prompts for the first guess" do
        expect(output2).to receive(:puts).with('Enter guess:')
        game.start('1234')
      end
    end

    describe "#guess" do
      it "sends the mark to output" do
        game.start('1234')
        expect(output2).to receive(:puts).with('++++')
        game.guess('1234')
      end
    end
  end
end