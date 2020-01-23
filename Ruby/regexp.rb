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


# string = "Ruby On Rails framework is used for Web Application"

# p string =~ /On/      #5
# p string =~ /for/     #32
# p string =~ /Application/ ? "Valid" : "Invalid"  #Valid
# p string =~ /Apps/ ? "Valid" : "Invalid"         #Invalid

# if string =~ /Web/
#   puts "Valid"
# else
#   puts "Invalid"
# end




