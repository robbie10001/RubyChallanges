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


    