#!/usr/bin/ruby
require_relative 'src.rb'
include Math

print "Программа находит максимальный отрицательный корень уравнения ƒ(x) = 0\n"
print "Выберите уравнение:\n"
print " 1. -x² + sin(x/2) = 0\n"
print " 2. x⁵ + 3x³ + x² + 1= 0\n"

command = gets.chomp
case command.to_i
when 1
  func = ->(x) { sin(x.to_f / 2) - x**2 }
  print "Результат выражения с помощью lambda - функции:\n"
  print "x = #{root(func)}\n"
  print "Результат выражения с помощью блока:\n"
  print "x = #{root { |x| sin(x.to_f / 2) - x**2 }}\n"
when 2
  func = ->(x) { x**5 + 3 * x**3 + x**2 + 1 }
  print "Результат выражения с помощью lambda - функции:\n"
  print "x = #{root(func)}\n"
  print "Результат выражения с помощью блока:\n"
  print "x = #{root { |x| x**5 + 3 * x**3 + x**2 + 1 }}\n"
else
  print "Error: wrong command\n"
end
