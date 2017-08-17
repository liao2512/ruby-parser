require 'minitest/autorun'
require_relative '../lib/visit'

describe "Visit" do

  before do
    @visit = Visit.new('path', 'ip')
  end

  it "returns visit path" do
    @visit.path.must_equal 'path'
  end

  it "returns visit ip" do
    @visit.ip.must_equal 'ip'
  end
end