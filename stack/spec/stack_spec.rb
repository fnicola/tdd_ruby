require 'test/unit'
require_relative '../stack'

describe Stack do
  before(:each) do
    @stack = Stack.new
  end

  it "creates a stack" do
    expect(@stack.size).to eq 0
  end

  it "should add one element to the stack" do
    @stack.push 5
    expect(@stack.size).to eq 1
  end

  it "should throw an exception calling pop on an empty stack" do
    expect{@stack.pop}.to raise_error("Empty stack")
  end

  it "should add two elements to the stack" do
    @stack.push 5
    @stack.push 10
    expect(@stack.size).to eq 2
  end

  it "should pop an element in the stack if size > 0" do
    @stack.push 5
    size = @stack.size
    expect(@stack.pop).to eq 5
    expect(@stack.size).to eq (size -1)
  end

  it "should pop element in reverse then pushed" do
    el = [1,2,3,4]
    result = []
    el.each {|x| @stack.push x}
    el.size.times do
      result << @stack.pop
    end
    expect(result).to eq [4,3,2,1]
    expect(@stack.size).to eq 0
  end
end
