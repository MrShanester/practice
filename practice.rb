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

def fib(num)

  fib = [0, 1]

  if num <= 2
    return fib[num - 1]
  end

  (num - 2).times do 
    index = fib.length
    hold_one = fib[index - 1]
    hold_two = fib[index - 2]
    nex = hold_one.to_i + hold_two.to_i
    fib << nex
  end

  return fib, fib[num - 1]
    
end

p fib(23)