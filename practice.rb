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
# h = {
#   name: "Shane",
#   sex: "M",
#   height: "5' 10",
#   hair: "Blonde"
# }

# h["eye_color"] = "Green"

# p h

# function

# def is_even?(number)
#   if number % 2 == 0 
#     return true
#   else
#     return false
#   end
# end

# p  is_even?(3)

# [
#   {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: 403, likes: 644}
#   {title: "Tuesdays are hell", submitted_by: 603, likes: 1}
# ]
  
# [
#   {user_id: 403, name: "Aunty Em"},
#   {user_id: 231, name: "Joelle P."},
#   {user_id: 989, name: "Lyndon Johnson"},
#   {user_id: 111, name: "Patti Q."},
#   {user_id: 603, name: "Shane N."}
# ]
    
# [
#   {title: 'Me Eating Pizza', submitted_by: "Joelle P.", likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: "Lyndon Johnson", likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: "Patti Q.", likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: "Aunty Em", likes: 644},
#   {title: "Tuesdays are hell", submitted_by: "Shane N.", likes: 1}
# ]

# Step one, array
# for inex on first array, 
# make a new hash, push title from first array, search  by id to push name from second array, push likes from first array
# push that hash into output array
# return output


# def merge(array_one, array_two)
#   output = []
#   array_one.each do |hash|
#     return_hash = {}
#     return_hash[:title] = hash[:title]
#     name_id = hash[:submitted_by]
#     array_two.each do |h|
#       if h[:user_id] == name_id
#         return_hash[:submitted_by] = h[:name]
#       end
#     end
#     return_hash[:likes] = hash[:likes]
#     output << return_hash 
#   end
#   return output
# end

# p merge([
#   {title: 'Me Eating Pizza', submitted_by: 231, likes: 1549},
#   {title: 'i never knew how cool i was until now', submitted_by: 989, likes: 3},
#   {title: 'best selfie evar!!!', submitted_by: 111, likes: 1092},
#   {title: 'Mondays are the worst', submitted_by: 403, likes: 644},
#   {title: "Tuesdays are hell", submitted_by: 603, likes: 1}
# ], [
#     {user_id: 403, name: "Aunty Em"},
#     {user_id: 231, name: "Joelle P."},
#     {user_id: 989, name: "Lyndon Johnson"},
#     {user_id: 111, name: "Patti Q."},
#     {user_id: 603, name: "Shane N."}
# ])

# hash = {"a" => 1, "b" => 2, "c" => 3}
# return_hash = {}
# hash.each do |num|
#   return_hash[num[1]] = num[0]
# end
# p return_hash

# Input: [2, 5, 3, 1, 0, 7, 11]
# Output: [3, 7]

# Input: [1, 2, 3, 4, 5]
# Output: false (While 1, 2, 3, and 4 altogether add up to 10, we're seeking just one pair of numbers.)

# create hash with array numbers set to true
# iterate through array 
# subtract array number from ten
# see if remainder is in hash
# if so, return the pairing

# def ten?(array)
#   hash = {}
#   array.each do |num|
#     hash[num] = true
#   end
#   array.each do |n|
#     temp = 10 - n
#     if hash[temp] && n != temp
#       return_array = []
#       return_array << n
#       return_array << temp
#       return return_array
#     end
#   end
# end

# p ten?([2, 5, 3, 1, 0, 7, 11])

# def monkey(input)
#   alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
#   output = ""
#   input.length.times do 
#     output += alphabet.sample
#   end
#   return output
# end

# def monkey_times(input)
#   count = 0
#   while true
#     count += 1
#     if monkey(input) == input
#       return "It took #{count} tries for the computer to generate the word #{input.upcase}."
#     end
#   end
# end

# p monkey_times("monkey")

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 2]
# Output: true

# Input: [1, 2, 3, 4, 5, 6], [6, 3, 7]
# Output: false

# Input: [1, 2, 3], [2, 3]
# Output: true

# create def

# turn array one inteo hash, keys are numbers, value is true
# iterate through array two, if returns false for key, then return false for def
# if all return true, return true for def

def subset(array_one, array_two)
  hash = {}
  array_one.each do |num|
    hash[num] = true
  end
  array_two.each do |num|
    return false unless hash[num]
  end
  true
end

p subset([1, 2, 3, 4, 5, 6], [6, 3, 7])