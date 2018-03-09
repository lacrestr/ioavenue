#def puts_hello_ioavenue
    if block_given?
        puts yield "I/O/ Avenue"
    else
        puts "No block given."
    end
end

puts_hello_ioavenue { |name| "Hello # {na}"}
.regject { |num| num.even?}
#
#
require "./alphabet_testers.rb"
puts AlphabetTesters.a? ("a")
