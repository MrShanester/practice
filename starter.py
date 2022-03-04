# Print out array

# from contextlib import nullcontext


def counter(input):
    i = 0
    while i < len(input):
        print(input[i])
        i += 1

# counter([1, 2, 3, 4, 5])

# Convert Numerals to Integer


def numeral(input):
    numerals = {"I": 1, "IV": 4, "V": 5, "IX": 9, "X": 10, "XL": 40, "L": 50, "XC": 90, "C": 100, "CD": 400, "D": 500, "CM": 900, "M": 1000
                }
    i = 0
    sum = 0
    while i < len(input):
        clump = None
        if i != len(input) - 1:
            clump = input[i] + input[i + 1]
        if numerals.get(clump):
            sum += numerals[clump]
            i += 2
        else:
            sum += numerals[input[i]]
            i += 1
    return sum


# print(numeral("MMXXI"))

# return longest common string


def common(string_1, string_2):
    output = ""
    i = 0
    j = 0
    var = 0
    while i < len(string_1):
        temp = ""
        while j < len(string_1):
            temp += string_1[j]
            j += 1
            if temp in string_2:
                if len(temp) > len(output):
                    output = temp
        i += 1
        var += 1
        j = var
    return output


print(common("hell", "hello"))
