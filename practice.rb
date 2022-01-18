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

# def hello(string)
#   p "Hello, my name is #{string}."
# end

# p "Enter your name."
# var = gets.chomp

# hello(var)

# name = "shane"

# p name.upcase
# p name.reverse

# def calculate(number, times)

#   number = number * times

#   return number

# end

# p calculate(12, 4)

# def fib(num)

#   fib = [0, 1]

#   if num <= 2
#     return fib[num - 1]
#   end

#   (num - 2).times do 
#     index = fib.length
#     hold_one = fib[index - 1]
#     hold_two = fib[index - 2]
#     nex = hold_one.to_i + hold_two.to_i
#     fib << nex
#   end

#   return fib, fib[num - 1]
    
# end

# p fib(23)

# Input: ["a", "b", "c", "d"]
# Output: ["ab", "ac", "ad", "ba", "bc", "bd", "ca", "cb", "cd", "da", "db", "dc"]

# input will always be an array
# iterate through array and add, make sure to increase index 
# first loop will be an each loop
# second will be an index loop 
# return output

# def combo(input)
#   output = []
#   input.each do |letter|
#     i = 0
#     input.length.times do
#       if letter != input[i]
#         temp = letter + input[i]
#         output << temp
#       end
#       i += 1
#     end
#   end
#   return output
# end

# p combo(["a", "b", "c", "d", "e", "f", "g"])

# loop through first string
# compare index of each string
# increase value counter if the index's differ
# return value
# input = "ABCDEFG", "ABCXEOG"
# putput = 2

# def compare(string_one, string_two)
#   i = 0 
#   value = 0
#   string_one.length.times do
#     if string_one[i] != string_two[i] 
#       value += 1 
#     end
#     i += 1
#   end
#   return value
# end

# p compare("ABCDEFG", "ZBCXEOG"
# )

# Array

# a = [1,2,3,4,5,6,7]
# i = 8
# 12.times do 
#   a << i 
#   i += 1
# end

# p a

# hash
h = {
  name: "Shane",
  sex: "M",
  height: "5' 10",
  hair: "Blonde"
}

h["eye_color"] = "Green"

p h