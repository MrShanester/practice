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

# def subset(array_one, array_two)
#   hash = {}
#   array_one.each do |num|
#     hash[num] = true
#   end
#   array_two.each do |num|
#     return false unless hash[num]
#   end
#   true
# end

# p subset([1, 2, 3, 4, 5, 6], [6, 3, 7])

# if a value appears twice print first value

# def duplicate(array)
#   hash = {}
#   hash[array[0]] = true
#   i = 1
#   while i < array.length
#     return "The first duplicate is #{array[i]}" if hash[array[i]]
#     hash[array[i]] = true
#     i += 1
#   end
#   "No Duplicates"
# end

# puts duplicate([2, 3, 1, 4, 5, 2, 6])

# def leap?
#   puts "What is your planet's name?"
#   planet = gets.chomp
#   puts "How many hours are in one day on #{planet}?"
#   hours = gets.chomp.to_f
#   puts "How many days does it take for #{planet} to rotate around it's home star?"
#   year = gets.chomp.to_f
#   yearly_h = (year * hours)
#   left_over = yearly_h % hours
#   needed_years = hours / left_over

#   if yearly_h % hours == 0
#     puts "#{planet} needs no leap years."
#   else
#     puts "#{planet} needs a leap year every #{needed_years} cycles."
#   end
# end

# leap?()

# Given a square matrix, calculate the absolute difference between the sums of its diagonals.

# input = [[1,2,3], [4,5,6], [9,8,9]]
# output = 2

# count the length of our matrix
# index = 0, j = matrix.length - 1
# right_diag, left_diag
# Iterate through the matrix, Right diag += array[i}, Right diag += array[i}
# minus left and right in ||
# return difference

# def diagonals(matrix)
#   i = 0
#   j = matrix.length - 1
#   right_diag = 0
#   left_diag = 0
#   matrix.each do |array|
#     right_diag += array[i]
#     left_diag += array[j]
#     i += 1
#     j -= 1
#   end
#   if right_diag > left_diag
#     output = right_diag - left_diag
#   else
#     output = left_diag - right_diag
#   end
#   return output
# end

# p diagonals(input)

# input = "(){}[]"


# def valid?(string)
#   stack = []
#   i = 0
#   while i < string.length
#     if string[i] == "(" || string[i] == "[" || string[i] == "{"
#       stack << string[i]
#     elsif string[i] == ")" && stack[0] == "("
#       stack.pop
#     elsif string[i] == "}" && stack[0] == "{"
#       stack.pop
#     elsif string[i] == "]" && stack[0] == "["
#       stack.pop
#     else
#       return false
#     end 
#     i += 1
#   end
#   return false if stack[0]
#   true
# end

# p valid?(input)

# input = 4

# output = [['','','',#], ['','',#,#], ['',#,#,#], [#,#,#,#]]

# make def
# make output array
# i = 1
# j = input.length - 1  
# input.length.times do
# make temp array = []
# j.times do 
#   temp_array << ""
# end
# i.times do 
#   temp_array << "#"
# end
# output_array << temp
# return output array

# input = 4

# def hash_matrix(number)
#   output = []
#   i = 1
#   j = number - 1
#   number.times do
#     temp_array = []
#     j.times do 
#       temp_array << " "
#     end
#     i.times do 
#       temp_array << "#"
#     end
#     i += 1
#     j -= 1
#     puts temp_array.join("")
#   end
# end

# hash_matrix(4)

# input = 10

# def staircase(num)
#   stair = ' ' * num
#   num.times do
#     stair += "#"
#     stair.slice!(0)
#     puts stair
#   end
# end

# staircase(input)

# FIZZBUZZ

# def buzz?(input)
#   if input % 15 == 0
#     output = "FIZZBUZZ"
#   elsif input % 5 == 0
#     output = "FIZZ"
#   elsif input % 3 == 0
#     output = "BUZZ"
#   else
#     output = "NOT BUZZABLE"
#   end
#   return output
# end

# puts buzz?(476)

#LeapYear

# def leap(input)
#   if input % 4 == 0
#     if input % 100 == 0
#       if input % 400 == 0
#         return true
#       end
#       return false
#     end
#     return true
#   end
#   return false
# end

# puts leap(2244)

# # Recursive countdown

# def count(number)
#   puts number
#   count(number - 1) unless number == 0
# end

# count(10)

# Recursive array doubler

# def doubler(array, index)
#   array[index] *= 2
#   doubler(array, index + 1) if index != array.length - 1  
#   return array
# end

# prices = [7,1,5,3,6,4]
# 5 buy on day two, sell on five

# make a def
# loop through the array
# make a variable for lowest
# make a variable for highest
# if index of lowest is smaller than index of highest, then return difference
# if not, run loop again and the lowest number cannot equal previous lowest number.
# .each loop
# index loop
# compare differences and store if index of larger number is larger than index of smaller number 
# return difference

# def stocks(array, high)
#   lowest = array.first
#   if high == array.first
#     highest = array[1]
#   else
#     highest = array.first
#   end
#   array.each do |num|
#     lowest = num if num < lowest 
#     highest = num if num > highest && num != high
#   end
#   return (highest - lowest) if array.index(lowest) < array.index(highest) 
#   stocks(array, highest)
# end

# input = [80, 100, 1, 2, 3, 4, 5]
# output = 20

# input = [7,1,5,3,6,4]
# output = 5

# def stocks(array)
#   i = 1
#   loops = 1
#   output = 0
#   array.each do |num|
#     diff = 0
#     while i < array.length do
#       diff = (num - array[i]).abs if array.index(num) < i && (num - array[i]).abs > diff && num < array[i]
#       i += 1
#     end
#     loops += 1
#     i = loops
#     output = diff if diff > output
#   end
#   output
# end



# p stocks([80, 100, 1, 2, 3, 4, 5])

# Roman Numeral Counter

# def numeral(input)
#   numerals = {"I" => 1, "IV" => 4, "V" => 5, "IX" => 9, "X" => 10, "XL" => 40, "L" => 50, "XC" => 90, "C" => 100, "CD" => 400, "D" => 500, "CM" => 900, "M" => 1000
#   }
#   i = 0
#   sum = 0
#   while i < input.length do
#     clump = nil
#     clump = input[i] + input[i + 1] unless input[i + 1] == nil
#     unless numerals[clump] == nil
#       sum += numerals[clump]
#       i += 2
#     else
#       sum += numerals[input[i]]
#       i += 1
#     end
#   end
#   sum
# end

# p numeral("MMXXI")

# def pascals(num)
#   output = [1]
#   return_array = [1]
#   num.times do 
#     i = 0
#     p return_array
#     return_array = [1]
#     while i < output.length
#       value = 1
#       value = output[i] + output[i + 1] unless output[i + 1] == nil
#       return_array << value
#       i += 1
#     end
#     output = return_array
#   end
# end

# pascals(5)

# def happy?(integer)
#   val = integer.to_s
#   sum = 0
#   i = 0
#   while i < val.length
#     sum += val[i].to_i * val[i].to_i
#     i += 1
#   end
#   return true if sum == 1
#   happy?(sum)
# end

# p happy?(2)

# wrote this
# def generate(num_rows)
#   num_rows.times.map{|n|[p=1]+(1..n).map{|k|p=p*(n-k+1)/k}}
# end

# p generate(5)

# launchpad labs indeed job? Daniel Schadd

# return length of longest non repeating substring

# input = "abcabcbba"
# output = 3

# def longest_sub(input)
#   i = 1
#   val = 1
#   hash = {input[0] => true}
#   output = 0
#   while i < input.length
#     if hash[input[i]]
#       output = val if val > output
#       val = 0
#       i += 1
#     else
#       hash[input[i]] = true
#       val += 1
#       i += 1
#     end
#   end
#   output
# end

# p longest_sub("bbbbbbbbb")

# median of two sorted arrays

# def median(array_one, array_two)
#   output_array = []
#   array_one.each do |num|
#     output_array << num 
#   end
#   array_two.each do |num|
#     output_array << num 
#   end
#   output_array = output_array.sort
#   median = (output_array.length - 1) / 2
#   return output_array[median] if output_array.length % 2 != 0
#   output = (output_array[median].to_f + output_array[median + 1].to_f) /  2
#   return output
# end

# p median([1,2,3], [4,5,6])

# zigzagstringConversion

# def convert(string, lines)
#   output = ""
#   hash = {}
#   zag = 0
#   lines.times do
#     i = 0
#     zag += 1
#     count = 1
#     tick = true
#     while i < string.length
#       hash[string[i]] = count
#       output += string[i] if hash[string[i]] == zag
#       tick = false if count == lines
#       if tick
#         count += 1
#       else
#         count -= 1
#         tick = true if count == 1
#       end
#       i += 1
#       hash = {}
#     end
#   end
#   return output
# end

# p convert("PAYPALISHIRING", 4)

# Given an input string s and a pattern p, implement regular expression matching with support for '.' and '*' where:

def matching?(string, pattern)
  compare_string = ""
  i = 0
  while i < pattern.length
    if pattern[i] == "*"
      if pattern[i - 1] == "."
        compare_string += string[i] 
      else
        compare_string += pattern[i - 1]
      end
    elsif pattern[i] == "."
      compare_string += string[i]
    else
      compare_string += pattern[i]
    end
    i += 1
  end
  return true if string == compare_string
  false
end

p matching?("aa", ".*")