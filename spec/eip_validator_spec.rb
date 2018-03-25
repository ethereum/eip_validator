RSpec.describe EipValidator do
  it "has a version number" do
    expect(EipValidator::VERSION).not_to be nil
  end

  it "raises exception if it includes invalid eips" do
    expect{
      EipValidator::Runner.run Dir["spec/fixtures/VALID*md"]
    }.not_to raise_error
  end

  it "raises exception if it includes invalid eips" do
    expect{
      EipValidator::Runner.run Dir["spec/fixtures/*md"]
    }.to raise_error
  end
end
