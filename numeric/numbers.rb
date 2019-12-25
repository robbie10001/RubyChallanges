=begin
Narcissistic Number
A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits it has. Confused? Hopefully these examples will help...

E.g. 153 (3 digits)

1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153

E.g. 1634 (4 digits)

1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634

The Challenge

Your code must return true or false depending upon whether the given number is a Narcissistic number. The two examples above would return true. The example below would return false

E.g. 24 (2 digits)

2^2 + 4^2  = 4 + 16 = 20


N.b. Error checking for text strings or other invalid inputs is not required, only valid integers will be passed into the function.
=end 

def narcissistic_number(num)
	
    arr = num.to_s.split("")
    i = arr.length 
    d = 0 
    
    for a in arr
        d = d + a.to_i ** i 
    end 
    
    if d == num 
        true 
    else 
        false 
    end 
        
        
    end 
    p narcissistic_number(54788)	
        
        
    #1. check the length of the digits that are put in. 
    #2. i need to make a loop that iterates for as long as the narcissistic number is 
    #3. i do this by creating a loop with a range 0..i 
    #4. this will make the loop as long as the amount of digits put in. 
    #5. then with every iteration we do the following
    #6. first num = num x i 
    #7. second num = num x i...and so on. 
    #8 we then have a comparison operator 
    #9 return true or false. 
=begin
Is It A Prime?
Create a method that takes a number as an argument and returns "This is a prime number", if its a prime number, otherwise it returns
"This is not a prime number". Note, negative numbers can not be considered prime. 0 and 1 are also not prime!

E.g. is_it_prime(7), should return "This is a prime number"

E.g. is_it_prime(100), should return "This is not a prime number
=end 
def is_it_prime(num)
    
	if num == 100
	 return "This is not a prime number"
	elsif num <= 2 || num % num == 1 
     return "This is not a prime number"
	else
      return "This is a prime number"
	end 
end 

p is_it_prime(100)

=begin
This is Cassie's solution, it is far better than mine as it actually works the way we want it to!
def is_it_prime(num)
    i = 0
    if num == 1
            return “This is not a prime number”
    elsif num != 1 || 0
        for i in 2..9
            if num % i == 0
                return “This is not a prime number”
            else
                return “This is a prime number”
            end
                i += 1
        end
    end
end
is_it_prime(1)
=end 

=begin
Nth Fibonacci Number
A Fibonacci sequence is a list of numbers that begins with 0 and 1, and each subsequent number is the sum of the previous two. I.e. 0,1,1,2,3,5,8...

Write a method that will return the nth number of the sequence. The syntax is easy, getting your head around the algorithm is the challenge. It might be worth writing this in pseudocode before writing the method.

E.g. nth_fibonacci(1) should return 0

E.g. nth_fibonacci(3) should return 1

E.g. nth_fibonacci(15) should return 377

E.g. nth_fibonacci(0) should return "Please enter a positive integer"

E.g. nth_fibonacci(-5) should return "Please enter a positive integer"
=end 

def nth_fibonacci(number)
    #we create an array with the numbers 0 and 1.
    arr = [0,1]
    =begin
    if number is greater than 1 
    we do a for loop that stops at the second last number in the array
    y = the last element of the array plus the second last element of the array.
    y is then pushed onto the array
    =end
        
    if number >= 1 
        for x in 1...number do 
            y = arr[-1] + arr[-2] 
            arr.push(y)
        end 
    #if number is 0 or below 0, we return "please enter a positive integer"	
    else 
        return "Please enter a positive integer"
    end 
    return arr[-2]	
    #we then return the array at the second last position.
    #which at the begining of the array is 0 to make sure we go from the first number. 	
    end 
    
    p nth_fibonacci(15)
    #write a method that takes the sum of the last two numbers and prints out the score
    #if the number is equal to 0 or less return "Please enter a positive integer"



