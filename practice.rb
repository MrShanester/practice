# def practice(number)
#   if number == 0
#     p "null"
#   elsif number == 9
#     p "Niner"
#   else 
#     p "Boring choice of a number"
#   end
# end

# practice(9)

def hello(string)
  p "Hello, my name is #{string}."
end

p "Enter your name."
var = gets.chomp

hello(var)