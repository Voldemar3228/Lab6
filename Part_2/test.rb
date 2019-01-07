#!/usr/bin/ruby

require 'minitest/autorun'
require_relative 'task.rb'

CORRECT = 0.22984884706593

class ReturnGreetingTest < MiniTest::Unit::TestCase
  def test_unacceptable_values
    assert_nil integral('string')
    assert_nil integral(0.0)
    assert_nil integral(-0.000001)
  end

  def test_correct_values
    assert_in_delta CORRECT, integral(0.1), 0.1
    assert_in_delta CORRECT, integral(0.01), 0.01
    assert_in_delta CORRECT, integral(0.001), 0.001
    assert_in_delta CORRECT, integral(0.0001), 0.0001
    assert_in_delta CORRECT, integral(0.00001), 0.00001
    assert_in_delta CORRECT, integral(0.000001), 0.000001
  end
end
