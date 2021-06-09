#
# Assignment: Basic 13
#
# Solve all 13 problems below in as much of a Ruby way as possible.
#
# Bonus: Try to use as few lines as possible for each question
# Print 1-255
#
# Write a program that would print all the numbers from 1 to 255.
# Print odd numbers between 1-255
#
# Write a program that would print all the odd numbers from 1 to 255.
# Print Sum
#
# Write a program that would print the numbers from 0 to 255 but this time, it would also print the sum of the numbers that have been printed so far. For example, your output should be something like this:
#
#     New number: 0 Sum: 0
#     New number: 1 Sum: 1
#     New number: 2 Sum: 3
#     New number: 3 Sum: 6
#     ...
#     New number: 255 Sum: __
#
# Do NOT use an array to do this exercise.
# Iterating through an array
#
# Given an array X, say [1,3,5,7,9,13], write a program that would iterate through each member of the array and print each value on the screen. Being able to loop through each member of the array is extremely important.
# Find Max
#
# Write a program (sets of instructions) that takes any array and prints the maximum value in the array. Your program should also work with a given array that has all negative numbers (e.g. [-3, -5, -7]), or even a mix of positive numbers, negative numbers and zero.
# Get Average
#
# Write a program that takes an array, and prints the AVERAGE of the values in the array. For example for an array [2, 10, 3], your program should print an average of 5. Again, make sure you come up with a simple base case and write instructions to solve that base case first, then test your instructions for other complicated cases. You can use a length function with this assignment.
# Array with Odd Numbers
#
# Write a program that creates an array 'y' that contains all the odd numbers between 1 to 255. When the program is done, 'y' should have the value of [1, 3, 5, 7, ... 255].
# Greater Than Y
#
# Write a program that takes an array and returns the number of values in that array whose value is greater than a given value y. For example, if array = [1, 3, 5, 7] and y = 3, after your program is run it will print 2 (since there are two values in the array that are greater than 3).
# Square the values
#
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself. When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].
# Eliminate Negative Numbers
#
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. When the program is done, x should have no negative values, say [1, 5, 10, 0].
# Max, Min, and Average
#
# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.
# Shifting the Values in the Array
#
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].
# Number to String
#
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].



range = (1..255).to_a

print (range)

print("\n\n")

print (range.reject{|elem| elem.odd?})

print("\n\n")

sum = 0;
for i in 0..255
  sum += i
  puts "New number: #{i} Sum: #{sum}"
end

newArr = [1,3,5,7,9,14]

def iterateArray(arr)
  arr.each_with_index { |val, index| puts "#{val} is at #{index}"}
end

iterateArray(newArr)

def findMax(arr)
  if(arr.length == 1)
    return arr[0]
  elsif(arr.length == 0)
    return nil
  end

  max = arr[0]
  for item in arr
    if(item.to_i > max.to_i)
      max = item
    end
  end
  return max
end

def findMin(arr)
  if(arr.length == 1)
    return arr[0]
  elsif(arr.length == 0)
    return nil
  end

  min = arr[0]
  for item in arr
    if(item.to_i < min.to_i)
      min = item
    end
  end
  return min
end

puts "Max number is " + findMax(newArr).to_s

def average(arr)
  if(arr.length == 0)
    return nil
  elsif(arr.length == 1)
    return arr[0]
  end
  sum = 0;
  average = 0;
  for item in arr
    sum += item.to_i
  end
  average = (sum.to_f / (arr.length - 1).to_f).to_f
  return average
end

puts "The average is " + average(newArr).to_s

def greaterThanY(yinput)
  arr = [1,3,5,7]
  y = yinput.to_i
  greaterNums = 0
  for item in arr
    if(item > y)
      greaterNums+=1
    end
  end
  return greaterNums
end

puts greaterThanY(3)

def squareValues(arr)
  for i in 0...arr.length
    puts "i = " + arr[i].to_s
    arr[i] = arr[i] * arr[i]
  end
  return arr
end

puts squareValues(newArr)

newArr = [1, 5, 10, -2]

def noNegatives(arr)
  for i in 0...arr.length
    if(arr[i] < 0)
      arr[i] = 0
    end
  end
  return arr.to_a
end

puts noNegatives(newArr)

def minMaxAve(arr)
  Hash.new("stats")
  stats = {min: findMin(arr), max: findMax(arr), average: average(arr).to_i}
  return stats
end

puts minMaxAve(newArr)

def shiftArr(arr)
  temp = arr.shift;
  arr.push(temp)
  return arr.to_a
end

puts shiftArr(newArr)

def NumberToString(arr)
  for i in 0...arr.length
    if(arr[i] < 0)
      arr[i] = 'Dojo'
    end
  end
  return arr.to_a
end

puts NumberToString([-2, -9, 10, 23])
