#!/usr/bin/ruby

include Math

require 'minitest/autorun'
require_relative 'src.rb'

class ReturnGreetingTest < MiniTest::Unit::TestCase
  @@accurancy = 0.1

  def test_unacceptable_values
    assert_nil root('Not a Proc object')
  end

  def test_correct_values
    assert_in_delta 0, root(->(x) { sin(x.to_f / 2) - x**2 }), @@accurancy
    assert_in_delta 0, root { |x| sin(x.to_f / 2) - x**2 }, @@accurancy
    assert_in_delta 0 - 0.76, root(->(x) { x**5 + 3 * x**3 + x**2 + 1 }), @@accurancy
    assert_in_delta 0 - 0.76, root { |x| x**5 + 3 * x**3 + x**2 + 1 }, @@accurancy
  end
end
