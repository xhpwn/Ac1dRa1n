#!/usr/bin/env ruby

# Ac1dRa1n

=begin
    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    +                                                                   +
    +    Ac1dRa1n                                                       +
    +    @author Anubhav Saxena (xhpwn), |anubhav@saxena.xyz|           +
    +    @desc Generates tough and purely randomized passwords.         +
    +                                                                   +
    +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
=end

require_relative 'Numeric'
require_relative 'Alphabetical'
require_relative 'Alphanumeric'
require_relative 'ASCII'
require_relative 'WriteOut'

system "clear"

puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
puts "+                                                                   +"
puts "+    Ac1dRa1n                                                       +"
puts "+    @author Anubhav Saxena (xhpwn), |anubhav@saxena.xyz|           +"
puts "+    @desc Generates tough and purely randomized passwords.         +"
puts "+                                                                   +"
puts "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

print "\nInitializing "

$i = 0
begin
    print "."
    sleep(0.25)
    $i += 1
end while $i < 5
puts "."

# Initializing variables

begin
puts "\nChoose password model :\n\n"
puts "(1) Numeric"
puts "(2) Alphabetical"
puts "(3) Alphanumeric"
puts "(4) All ASCII"
puts "(5) Kill Ac1dRa1n"
print "Selector : "

writemode = ""
modselector = gets.chomp

case modselector

    when "1"
	writemode = "Numeric"
        print "\nEnter desired length : "
        outlength = gets.chomp.to_i
        out = Numeric.generate(outlength)
        puts "\nGenerated password => %s" % [out]
	WriteOut.writeout(writemode, out)
        sleep(1)

    when "2"
	writemode = "Alphabetical"
        print "\nEnter desired length : "
        outlength = gets.chomp.to_i
        out = Alphabetical.generate(outlength)
        puts "\nGenerated password => %s" % [out]
	WriteOut.writeout(writemode, out)
        sleep(1)

    when "3"
	writemode = "Alphanumeric"
        print "\nEnter desired length : "
        outlength = gets.chomp.to_i
        out = Alphanumeric.generate(outlength)
        puts "\nGenerated password => %s" % [out]
	WriteOut.writeout(writemode, out)
        sleep(1)

    when "4"
	writemode = "ASCII"
        print "\nEnter desired length : "
        outlength = gets.chomp.to_i
        out = ASCII.generate(outlength)
        puts "\nGenerated password => %s" % [out]
	WriteOut.writeout(writemode, out)
        sleep(1)

    end

end while modselector != "5"

puts "\nKilling Ac1dRa1n."
sleep(1)
puts "\nSuccess."
sleep(1)

system "clear"

