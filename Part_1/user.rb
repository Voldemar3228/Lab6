#!/usr/bin/ruby
require_relative 'src.rb'

print "                                       ₁\n"
print "Программа решает определённый интеграл ∫xsin(x²)dx\n"
print "                                       ⁰\n"
print "Выберите точность:\n"
print " 1. 10⁻⁵\n"
print " 2. 10⁻⁶\n"

command = gets.chomp
case command.to_i
when 1
  integral(0.00001)
when 2
  integral(0.000001)
else
  print "Error: wrong command\n"
end
