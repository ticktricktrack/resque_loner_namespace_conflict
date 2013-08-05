require 'spec_helper'

describe Dummy do
  it "should queue the dummy worker" do
    expect(Resque.enqueue(Dummy)).to_not raise_error(NoMethodError)
  end
end