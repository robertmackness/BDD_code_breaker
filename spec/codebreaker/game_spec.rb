require 'spec_helper'

module Codebreaker

  describe Game do 
    describe '#start' do
      let(:output2) {double('output2').as_null_object}
      let(:game) {Game.new(output2)}
      it "sends a welcome message" do
        expect(output2).to receive(:puts).with('Welcome to Codebreaker!')
        game.start
      end
      it "prompts for the first guess" do
        expect(output2).to receive(:puts).with('Enter guess:')
        game.start
      end
    end
  end
end