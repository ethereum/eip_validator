require 'spec_helper'

RSpec.describe "EipValidator::Validator"  do
  let(:category) { 'Core' }
  let(:type) { 'Standards Track' }
  let(:status) { 'Final' }
  let(:eip){
    {
      eip: 145,
      title: 'Bitwise shifting instructions in EVM',
      author: 'Alex Beregszaszi, Paweł Bylica',
      type: type,
      category: category,
      status:   status,
      created: '2017-02-13'
    }
  }
  subject(:validator){ EipValidator::Validator.new(eip)}

  describe "valid" do
    it "should have required fields" do
      expect(validator.valid?).to eq true
    end
  end

  describe "missing fields" do
    it "raise error if required fields are missing" do
      expect(EipValidator::Validator.new().valid?).to eq false
    end
  end

  describe "wrong status" do
    let(:status) { 'Foo'}
    it "raise error if required fields are missing" do
      expect(validator.valid?).to eq false
      expect(validator.errors[:status].first).to eq 'is not included in the list'
    end
  end

  describe "type is Standards Track" do
    let(:category) { nil }
    let(:type) { 'Standards Track' }
      
    it "category is mandatory" do
      expect(validator.valid?).to eq false
    end
  end

  describe "type is not Standards Track" do
    let(:category) { nil }
    let(:type) { 'Process' }
  
    it "category is not mandatory" do
      expect(validator.valid?).to eq true
    end
  end
end