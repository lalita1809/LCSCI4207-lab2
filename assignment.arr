import file("lab2-support.arr") as support

#support.encryptor1("hello.")
# fun my-encryptor1(name :: String) -> String: 
#   string-repeat(name, 5)
# end 
# support.test-encryptor1(my-encryptor1)

# support.encryptor2("hello") 
# fun my-encryptor2(name :: String) -> String: 
#   doc: "returns the first four letters of the string"
#   string-substring(name, 0, 4)
# end
# support.test-encryptor2(my-encryptor2)

# support.encryptor3(".....aa...2..3.4.5")
# fun my-encryptor3(name:: String) -> String: 
#   doc: "replace the excalmation points to periods"
#   string-replace(name, ".", "!")
# end 
# support.test-encryptor3(my-encryptor3)


# support.encryptor4("world12345,.......!!!!!!****")
# fun my-encryptor4(name :: String) -> String: 
#   doc: "repeat the first 3 values in the string 5 times"
#   Repeat = string-substring(name, 0, 4)
#   string-repeat(Repeat, 5)
# end 
# support.test-encryptor4(my-encryptor4)

# support.encryptor5("abcdefghijklmnopqrstuvwxyz!!!!!......@@@!@#$%^&") 
#   fun my-encryptor5(name :: String) -> String: 
#   doc: "replace every vowel with its next alphabetical letter" 
#   Replace_1 = string-replace(name, "a","b")
#   Replace_2 = string-replace(Replace_1, "e", "f") 
#   Replace_3 = string-replace(Replace_2, "i", "j") 
#   Replace_4 = string-replace(Replace_3, "o", "p")
#   Replace_5 = string-replace(Replace_4, "u", "v")
#   Replace_6 = string-replace(Replace_5, "A","B")
#   Replace_7 = string-replace(Replace_6, "E", "F") 
#   Replace_8 = string-replace(Replace_7, "I", "J") 
#   Replace_9 = string-replace(Replace_8, "O", "P")
#   string-replace(Replace_9, "U", "V")
  
# end 
# support.test-encryptor5(my-encryptor5)


# support.encryptor6("abcdefghijklmnopqrrrrrrrrrrrRRRstuvwxyz!!!!!......@@@!@#$%^&ABVDEJFOIREHFIORHFOIRH3FIOHR3FGOIHR3IO")
# fun my-encryptor6(name :: String) -> String: 
#   doc: "make every letter lowercase, and remove all r letters"
#   lower_uppercase = string-to-lower(name) 
#   string-replace(lower_uppercase, "r","")
# end
# support.test-encryptor6(my-encryptor6)

# support.encryptor7("abcdc")
# fun my-encryptor7(name :: String) -> Number: 
#   doc: "Count the amount of characters in the string"
#   string-length(name)
# end
# support.test-encryptor7(my-encryptor7)

# support.encryptor8("abcd")
# fun my-encryptor8(name :: String) -> String: 
#   doc: "Add 3 exclamation points and repeat 3 times"
#   Add_Exclamation = string-append(name, "!!!") 
#   string-repeat(Add_Exclamation, 3)
# end
# support.test-encryptor8(my-encryptor8)

support.encryptor9("ABCS")

fun my-encryptor9(name :: String) -> List<Number>: 
  first_value = string-substring(name, 0, 1) 
  string-to-code-points(first_value) 
end
support.test-encryptor9(my-encryptor9) 


support.encryptor10("eiuo.")

fun my-encryptor10(name :: String) -> String: 
  doc: "Repat the first 4 values 5 times, have vowels to the next follow letter, periods to exclamation points, and everything lowercase"
  lower_uppercase = string-to-lower(name)
  periods = string-replace(lower_uppercase, ".", "!")
  Replace_1 = string-replace(periods, "a","b")
  Replace_2 = string-replace(Replace_1, "e", "f") 
  Replace_3 = string-replace(Replace_2, "i", "j") 
  Replace_4 = string-replace(Replace_3, "o", "p")
  Replace_5 = string-replace(Replace_4, "u", "v")
  Shorten = string-substring(Replace_5, 0, 4)
  string-repeat(Shorten, 5)
end 

support.test-encryptor10(my-encryptor10) 
# end



  


