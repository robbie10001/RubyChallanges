=begin
RUBY STRINGS 

Find The First Non-Repeated Character

Write a method that will find the first non-repeated character in a String. Return false if only repeats are found. Try writing this by hand first. Confusing methods like this can become a lot more simple after they are written by hand.

E.g. first-non-repeat("awwwhhhggge") should return 'a'

E.g. first-non-repeat("aaaabbbcccdeeefgh") should return 'd'

E.g. first-non-repeat("wwwhhhggge") should return 'e'

E.g. first-non-repeat("wwwhhhggg") should return false

E.g. first-non-repeat("") should return false
=end 
def first_non_repeat (string)
    #we need to iterate through each letter, 
    #we need to compare letter after letter. 
    #we should do this in an if/else statement. 0
  
   arr = string.chars
   arr_counts = []
   arr.each do |x|
     arr_counts.push(arr.count(x))
   end
   if arr_counts.include? 1
     return arr[arr_counts.index(1)]
   else
     return false
   end
  end
  
  
  first_non_repeat ("aaaabbbcccdeeefgh")

=begin
Pig Latin
What is pig latin? Pig latin takes the first letter of every word, moves it to the end of the word and adds an ‘ay’ after it. For example, "the quick brown fox" becomes "hetay uickqay rownbay oxfay".

Write a method that translates a text to Pig Latin.

E.g. pig_latin("Sydney or Melbourne or Brisbane are possible destinations") should return "ydneySay roay elbourneMay roay risbaneBay reaay ossiblepay estinationsday"

E.g. pig_latin("A") should return "Aay"

E.g. pig_latin("") should return ""
=end 

def pig_latin(string)
    str = string.split.each do |x|
        x.concat (x[0] + 'ay')
    end 
    str.each do |x|
        x.slice!(0)
    end 
    str.join (' ')
    end 
    p pig_latin("Sydney or Melbourne or Brisbane are possible destinations")

=begin

Capitalise Each and Every
Create a method that will take a multi-word string as an argument, and returns that same string, with each word capitalised

E.g. capitalise_each("tHIs IS a MuLTi wORd STriNG"), should return "This Is A Multi Word String"

E.g. capitalise_each("this ignores &*& special CHARACTERS!"), should return "This Ignores &*& Special Characters!"

E.g. capitalise_each(""), should return ""

=end 

def capitalise_each(str)

    #str.downcase.split#
    str.split.map(&:capitalize)*' '
    #.split makes it into an array. 
    #.map 
    
         
        
    end
    
    p capitalise_each("ThiS Is A MulTi WoRd StRING")

=begin

Count Number of Vowels
Create a method that will take a string as an argument, and will return the amount of vowels the string contains. The vowels are "a", "e", "i", "o" and "u". Note, it is important to get the grammar correct in the return statement. Did you remember to account for uppercase letters?

E.g. count_number_of_vowels("The quick brown fox") should return "This string has 5 vowels"

E.g. count_number_of_vowels("sky fly") should return "This string has 0 vowels"

E.g. count_number_of_vowels("Fly In Sky") should return "This string has 1 vowel"

=end 


=begin
1. make sure to read what the question is asking closely! 
2. create a method that will take a string as an argument
3. We need to return the amount of vowels with in this string. 
4. We need to make sure we use the correct grammar. 
5. for example if we have 1 vowel we must return "This string has 1 vowel"
6. Otherwise, we must return "This string has (number) vowels"
=end

def count_number_of_vowels (str)
    vowel_count = str.downcase.count "a,e,i,o,u"
    p vowel_count

    if vowel_count == 1
        return "This string has #{vowel_count} vowel"
    else
        return "This string has #{vowel_count} vowels"
    end 
end 

p count_number_of_vowels ("hello are you having the best time of yo life")

=begin
we need to create a variable so that we can store our information. 
In this case i have named a variable called robbie. 

1. our variable "robbie", contains the contents of our argument (str).
2. we then use the method .downcase
3. This makes every letter within (str) become lower-cased. 
4. then we use the method .count "a,e,i,o,u"
5. this method is used so that we only count letter which are vowels. 
6. At this stage, we have the storage container (variable) robbie
7. robbie is equal to the count of lowercased letters that are vowels within our argument (str)
=end
	
=begin
1. we know that if robbie equal 1 we have to return the following exactly.
2. "This string has 1 vowel"
3. We can achieve this using an "if" statement. 
4. if robbie ==(is equal to) 1 return "This string has 1 vowel"
5. We use string interpolation to insert the value (1) of our variable (robbie) into the sentence.
6. "This string has #{robbie} vowel"

1. if our variable (robbie) is equal to anything besides 1, we know that we have to return the following.
2. "This string has 1 vowel"
3. Therefore we can use "else"
4. once again we use string interpolation to insert the value of our variable (robbie) in the sentence.
5. "This string has 5 vowels" in our code becomes 
6. "This string has #{robbie} vowels"

1. at the end of our if/else statement we need an end. 
2. we also need an end to close our method.
 
=end 

=begin 

Exes And Ohs
This is a great question for interview prep, so let's not google it. Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!


Write a method that will take a string as an argument. The method will check this string, and count the amount of 'x's and 'o's. It should return true if the amount of 'x's and 'o's are the same, and should return false if they are different. It should also be case insensitive.

E.g. exes_and_ohs("ooxx") should return true

E.g. exes_and_ohs("oOxXxoX") should return false

E.g. exes_and_ohs("zpzpzpp") should return true

=end 

def exes_and_ohs (string)

=begin
    psuedocode 
    1. We are given a method- def exes_and_ohs
    2. it takes a string as an argument in this case ("xxxooXoO")
    3. We need to count the amounts of 'x's and 'o's. 
    4. It should be true if the amount of x's and o's are the same.
    5. else it should return false. 
    6. It also needs to be casesensitive. 

    1.We know that we are asked to compare the amount of x's to o's. 
    2. we can use two variables inorder to try and seperately count x's and o's
    3. so we define the first variable as x_count
    4. we make this variable the sum of going through our string and lowercasing each letter and then counting the amount of x'(s)
    5. this is achieved by the following
    6. x_count(this is the variable) = string(the argument).downcase(makes everything lower case).count"x"(counts all the x's wihin the argument)
    7. we repeat this process with our second variable
    8. o_count (our second variable) = string(the argument).downcase(makes everything lower case).count"x"(counts all the x's within the argument)
    9.At this stage we have saved into our two variables two numbers.
    10. in x_count = we have the total number of x's within our argument.
    11 in o_count = we have the total number of o's within our argument. 
    12 we now need to compare the two variables in order to see if they match.
    13. if they match we put true 
    14. if it doesn't we put false. 
    13. We can do this using an if/else statement. 
=end
    
       x_count = string.downcase.count"x"
       o_count = string.downcase.count"o"
          if x_count == o_count
             true
          else 
            false 
          end 
       end
    p exes_and_ohs("xxxooXoO")

=begin
Isogram
An isogram is a word that has no repeating letters; consecutive or non-consecutive.

Implement a method that determines whether a string that contains only letters is an isogram. The method will take the string as an argument, and will return either true or false.

*E.g.* is_an_isogram("hello") should return false

*E.g.* is_an_isogram("scary") should return true
=end 
def is_an_isogram (string)
    isogram = string.downcase.scan (/\p{letter}/) #regular expression. 
    isogram.uniq == isogram 
  end
  puts is_an_isogram "hello world"

=begin 
Middle Character
Create a method that takes a string as an argument, and returns its middle character.

If the string's length is an even number, return the middle 2 characters

E.g. middle_character("testing"), should return "t"

E.g. middle_character("middleCharacters"), should return "ha"

E.g. middle_character("A"), should return "A"
=end 

def middle_character(str)
	
	if str.length == 0 
		p str
	elsif str.length.odd? 
		p str[str.length/2]
	elsif str.length.even?
		p str[str.length / 2-1] + str[str.length/2]
	#Your code here
end
end 

p middle_character ""

=begin
Something Sounds Snakey
Summer is rolling around, snakes are back out and about. Only now, they can take human form. The one way to find out whether or not you are talking to a snake is the way they pronounce their s's. They tend to hold them for a ssplit ssecond too long.

Write a method where, given a string as an argument, you return true whether the person is a snake, or false if they are not. Someone is a snake if they have 2 or more s's together in one of the words they say (Case insensitive).

E.g. is_it_a_snake("Ssay what?! I'n no snake"), should return true, as 'Ssay' had 2 or more s's in a row

E.g. is_it_a_snake("Something sseems a little ssuspect"), should return true, as 'sseems' and 'ssuspect' had 2 or more s's in a row

E.g. is_it_a_snake("Hello there Samantha"), should return false

E.g. is_it_a_snake("Sometimes, I just love saying words with an 's' in them"), should return false, as sometimes has 2 s's, but they are not next to each other
=end 
def is_it_a_snake(str)
	#your code here
	if str =~ /s{2}/i
        return true
    else
        return false
    end
end
=begin
Valid ATM Pin
ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits. Your task is to create a method that takes a string and returns true if the PIN is valid and false if it's not.

E.g. is_valid_PIN("1234"), should return true

E.g. is_valid_PIN("a234"), should return false

E.g. is_valid_PIN("123456"), should return true
=end 
def is_valid_PIN(pin)
    
    if pin.length == 4 or pin.length == 6 and pin.match(/^[0-9]*$/)
       p true 
    else 
       p false
    end 
  end 
=begin
  1. if the length of the pin is 4 or 6
  2. and the pin contains only numbers between 0-9
  3. true
  4. anything else
  5. is false.
=end
      
  is_valid_PIN("a234")
  
      def is_valid_PIN(pin)
=begin
  1. save the length of the pin into a variable
  2. save into a variable the count of the argument while making sure it only counters integers between 0 and 9
  3. Validate that the variables length and count match
  4. through a conditional (if/elsif/else statement)
  5. if this is a match print true 
  6. print value if either variable doesn't match. 
=end
  
      length = pin.length     #return the character length of string
      count = pin.count"0-9"  #count how many characters are numbers
      
      if length == 4 && count == 4
          p true
      elsif length == 6 && count == 6
          p true
      else
          p false
      end
  end
  p is_valid_PIN("123456")
  
=begin 
Input Output
Write a program that asks a user for their name and their age, and responds
as shown here, letting the user know how long it will be until they are 100 years old:

Program is run and outputs: "What is your name?"

User inputs: "Tom"

Program outputs: "Hi Tom! How old are you?"

User inputs: 40

Program outputs: "Wow! You are 40 years old. In 60 years, you will be 100!"


Test your program with different outputs.
=end
def get_details
    puts "What is your name?"
        input_name = gets.chomp
    puts "Hi #{input_name}! How old are you?"
      input_age = gets.chomp.to_i
    puts "Wow! You are #{input_age} years old. In #{100 - input_age} years, you will be 100!"
        
    end
    
    get_details 
    