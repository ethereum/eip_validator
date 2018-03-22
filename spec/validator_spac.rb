require 'spec_helper'

RSpec.describe "Validator"  do
  let(:eip){
    {
      eip: 145,
      title: 'Bitwise shifting instructions in EVM',
      author: 'Alex Beregszaszi, Paweł Bylica',
      type: 'Standards Track',
      category: 'Core',
      status: 'Final',
      created: '2017-02-13'
    }
  }
  subject(:validator){ Validator.new(eip)}

  describe "fields" do
    it "should have required fields" do
      expect(validator.valid?).to eq true
    end

    it "raise error if required fields are missing" do
      expect(Validator.new().valid?).to eq false
    end
  end
end