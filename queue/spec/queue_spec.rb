require 'test/unit'
require_relative '../queue'

describe Queue do
  let(:queue) { Queue.new }

  it "creates a new queue" do
    expect(queue.size).to eq 0
  end

  it "adds a new value to the queue" do
    queue.in 5
    expect(queue.size).to eq 1
  end

  it "adds 2 value and retrieve them in the right order" do
    queue.in 5
    queue.in 1
    expect(queue.out).to eq 5
    expect(queue.out).to eq 1
  end

  it "raise an exception when retrieve a value from an empty queue" do
    expect{(queue.out)}.to raise_error(RuntimeError, "queue empty!")
  end
end
