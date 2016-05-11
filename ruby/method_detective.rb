"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
"iNvEsTiGaTiOn".swapcase == "InVeStIgAtIoN"
# => true

"zom".insert(1, "o")
# => “zoom”

"enhance".center(15) 
# => "    enhance    "
"enhance".center(15) == "    enhance    "
# => true

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat " suspects"
#=> "the usual suspects"

" suspects".insert(0, "the usual") 
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter" [1..-1]
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".sum(n=16)
# => 122 

"How many times does the letter 'a' appear in this string?".count("a")
# => 4