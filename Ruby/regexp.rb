# p /hay/ =~ 'haystack'         #0
# p /hay/ =~ 'sayhaystack'      #3

# p /hay/ =~ 'hay'              #0
# p /hay/ =~ 'stack'            #nil
# p /hay/.match('haystack')     ##<MatchData "hay">
# p /hay/.match('stack')        #nil
# p /hay/.match('h')            #nil

# p /y/.match('haystack')       ##<MatchData "y">
# p /needle/.match('haystack')  #nil

# p /hay/ =~ 'haystack'         #0
# p 'haystack' =~ /hay/         #0
# p /a/ =~ 'haystack'           #1
# p /u/ =~ 'haystack'           #nil


# p /st/.match('haystack')      ##<MatchData "st">

# p /1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?')    ##<MatchData "1 + 2 = 3?">
# p /1 \+ 2 = 3 \?/.match('Does 1 + 2 = 3?')   #nil
# p /1\+2 = 3\?/.match('Does 1+2 = 3?')        ##<MatchData "1+2 = 3?">

# p /1 \+ 2 = 3\?/.match('1 + 2 = 3?')         ##<MatchData "1 + 2 = 3?">

# p /a\\b/.match('a\\b')  ##<MatchData "a\\b">


# p /W[aeiou]rd/.match('Word')    ##<MatchData "Word">
# p /W[aeiou]rd/.match('Wdrd')    #nil
# p /W[aeiou]rd/.match('word')    #nil

# p /[0-9a-f]/.match('9f')   ##<MatchData "9">
# p /[0-9a-f]/.match('5d')   ##<MatchData "5">
# p /[9f]/.match('9f')       ##<MatchData "9">
# p /[0-9a-f]/.match('d')    ##<MatchData "d">
# p /[0-9a-f]/.match('b8')   ##<MatchData "b">

# p /[a-f0-9]/.match('9f')   ##<MatchData "9">
# p /[a-f0-9]/.match('f9')   ##<MatchData "f">

# p /[^a-eg-z]/.match('f')   ##<MatchData "f">
# p /[^a-eg-z]/.match('F')   ##<MatchData "F">
# p /[^a-eg-z]/.match('p')   #nil


# string = "Ruby On Rails 6.0 framework is used for Web Application 48 4 8"

# p string =~ /On/      #5
# p string =~ /for/     #32
# p string =~ /Application/ ? "Valid" : "Invalid"  #Valid
# # p string =~ /Apps/ ? "Valid" : "Invalid"         #Invalid
# p string =~ /web/ ? "Valid" : "Invalid"          #Invalid
# p string =~ /web/i ? "Valid" : "Invalid"         #Valid

# if string =~ /Web/
#   puts "Valid"
# else
#   puts "Invalid"
# end

# p string.to_enum(:scan, /\d+/).map { Regexp.last_match }   #[#<MatchData "6">, #<MatchData "0">, #<MatchData "48">, #<MatchData "4">, #<MatchData "8">]


# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

# puts 'pankaj1497@gmail.com'.match? (VALID_EMAIL_REGEX)
# puts '1497@gmail.com'.match? (VALID_EMAIL_REGEX)
# puts 'pankaj1497@gm5ail.com'.match? (VALID_EMAIL_REGEX)
# puts 'pankaj1497@gmail.com56'.match? (VALID_EMAIL_REGEX)
# puts 'pankaj1497@gmailcom'.match? (VALID_EMAIL_REGEX)
# puts '@gmail.com'.match? (VALID_EMAIL_REGEX)
# puts '152qui@.hu'.match? (VALID_EMAIL_REGEX)


# m = "Pankaj 23".match /(?<name>\w+) (?<age>\d+)/
# p m.class
# p m[:name]
# p m[:age]

# m = "Pankaj97 23years".match /(?<name>\w+) (?<age>\d+)/
# p m[:name]  #Pankaj97
# p m[:age]   #23


# text = "my pen is green / your 99 pen is blue"

# a = text.split()
# b = text.scan(/\w+/)
# p a  #["my", "pen", "is", "green", "/", "your", "pen", "is", "blue"]
# p b  #["my", "pen", "is", "green", "your", "pen", "is", "blue"]


# p /./.match("Pankaj")                                          ##<MatchData "P">
# p /.*/.match("Pankaj")                                         ##<MatchData "Pankaj">
# p /.+/.match("Pankaj")                                         ##<MatchData "Pankaj">
# p /.*/.match("")                                               ##<MatchData "">
# p /.+/.match("")                                               #nil
# p /.?/.match("Pankaj")                                         ##<MatchData "P">
# p /.?/.match("")                                               ##<MatchData "">
# p /.{3}/.match("Pankaj")                                       ##<MatchData "Pan">
# p /.{3,}/.match("Pankaj")                                      ##<MatchData "Pankaj">
# p /.{3,}/.match("Pk")                                          #nil
# p /.{,4}/.match("Pankaj")                                      ##<MatchData "Pank">
# p /.{,4}/.match("Pk")                                          ##<MatchData "Pk">
# p /.{4,10}/.match("Pankaj Kumar")                              ##<MatchData "Pankaj Kum">
# p /.{4,10}/.match("Pk")                                        #nil
# p /.{4,10}/.match("Pnkj")                                      ##<MatchData "Pnkj">
# p /./.match(".")                                               ##<MatchData ".">
# p /./.match(",")                                               ##<MatchData ",">
# p /./.match("\n")                                              #nil


# p /\w/.match("Hello")                                          ##<MatchData "H">
# p /\w/.match(";Hello")                                         ##<MatchData "H">
# p /\w/.match(".';/Hello")                                      ##<MatchData "H">
# p /\w/.match("1586")                                           ##<MatchData "1">
# p /\w/.match("/?'.1586")                                       ##<MatchData "1">
# p /\w/.match("")                                               #nil
# p /\w/.match(" ")                                              #nil
# p /\w/.match("_")                                              ##<MatchData "_">
# p /\w/.match(":-.")                                            #nil



# p /\W/.match(" ")                                              ##<MatchData " ">
# p /\W/.match(".,;?/")                                          ##<MatchData ".">
# p /\W/.match("_")                                              #nil
# p /\W/.match("Hello")                                          #nil
# p /\W/.match("?.;'Hello")                                      ##<MatchData "?">
# p /\W/i.match("Hello?/./'")                                    ##<MatchData "?">



# p /\d/.match("15632")                                          ##<MatchData "1">
# p /\d/.match("Pankaj86s")                                      ##<MatchData "8">
# p /\d/.match("_")                                              #nil
# p /\d/.match(" ")              								 #nil
# p /\d/.match(".''")											 #nil
# p /\d/.match("Pankaj")										 #nil



# p /\D/.match("15236")                                          #nil
# p /\D/.match("Hello")                                          ##<MatchData "H">
# p /\D/.match("165HHKJ'/'/")                                    ##<MatchData "H">
# p /\D/.match(";:.';")                                          ##<MatchData ";">
# p /\D/.match("_")                                              ##<MatchData "_">
# p /\D/.match("")                                               #nil
# p /\D/.match(" ")                                              ##<MatchData " ">



# p /\h/.match("4512")                                           ##<MatchData "4">
# p /\h/.match("A15")                                            ##<MatchData "A">
# p /\h/.match("a56")                                            ##<MatchData "a">
# p /\h/.match("P5621")                                          ##<MatchData "5">
# p /\h/.match("_")                                              #nil
# p /\h/.match(";:/.")                                           #nil
# p /\h/.match("")                                               #nil
# p /\h/.match(" ")                                              #nil



# p /\H/.match("34545")                                          #nil
# p /\H/.match("UHGH65645")                                      ##<MatchData "U">
# p /\H/.match("Ab56")                                           #nil
# p /\H/.match("_")                                              ##<MatchData "_">
# p /\H/.match(":-,.")                                           ##<MatchData ":">
# p /\H/.match("")                                               #nil
# p /\H/.match(" ")                                              ##<MatchData " ">



p /\s/.match(" ")





# p /[[:lower:]]/.match("pankaj")                                ##<MatchData "p">
# p /[[:lower:]]/.match("Pankaj")                                ##<MatchData "a">
# p /[[:lower:]]/.match("PANKAJ")                                #nil
# p /[[:lower:]]+[[:lower:]]/.match("Pankaj")                    ##<MatchData "ankaj">
# p /[[:lower:]][[:upper:]][[:lower:]]/.match("PanKaj")          ##<MatchData "nKa">


# p /[[:digit:]]/.match("456")                                   ##<MatchData "4">
# p /[[:digit:]]/.match("Phdk456")                               ##<MatchData "4">
# p /[[:digit:]]+[[:digit:]]/.match("Phkd56478lPj63h")           ##<MatchData "56478">
# p /[[:upper:]]+[[:lower:]]+l{2}o/.match("Hello")               ##<MatchData "Hello">
# p /[[:upper:]]+[[:lower:]]+nkaj/.match("Pankaj")               ##<MatchData "Pankaj">
# p /<.+>/.match("<a><b>")                                       ##<MatchData "<a><b>">
# p /<.+?/.match("<a><b>")                                       ##<MatchData "<a">








