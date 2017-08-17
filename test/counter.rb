require 'minitest/autorun'
require_relative '../lib/visit'
require_relative '../lib/counter'

describe "Counter" do

  before do
    @counter = Counter.new("test/test.log")
  end

  it "parses all lines" do
    @counter.visits.length.must_equal 17
  end

  it "sorts total visits" do
    @counter.sort_total_visits[0].must_equal ['a', 7]
    @counter.sort_total_visits[1].must_equal ['c', 6]
    @counter.sort_total_visits[2].must_equal ['b', 4]
  end

  it "sorts unique visits" do
    @counter.sort_unique_visits[0].must_equal ['a', 4]
    @counter.sort_unique_visits[1].must_equal ['b', 3]
    @counter.sort_unique_visits[2].must_equal ['c', 1]
  end
end