# p /hay/ =~ 'haystack'   #0
# p /hay/ =~ 'hay'        #0
# p /hay/ =~ 'stack'      #nil
# p /hay/.match('haystack')   ##<MatchData "hay">
# p /hay/.match('stack')         #nil

# p /y/.match('haystack')   ##<MatchData "y">
# p /needle/.match('haystack')  #nil

# p /hay/ =~ 'haystack'    #0
# p 'haystack' =~ /hay/    #0
# p /a/ =~ 'haystack'      #1
# p /u/ =~ 'haystack'      #nil


# p /st/.match('haystack')   ##<MatchData "st">

# p /1 \+ 2 = 3\?/.match('Does 1 + 2 = 3?')   ##<MatchData "1 + 2 = 3?">
# p /1 \+ 2 = 3 \?/.match('Does 1 + 2 = 3?')   #nil
# p /1\+2 = 3\?/.match('Does 1+2 = 3?')   ##<MatchData "1+2 = 3?">

# p /1 \+ 2 = 3\?/.match('1 + 2 = 3?')    ##<MatchData "1 + 2 = 3?">

# p /a\\b/.match('a\\b')  ##<MatchData "a\\b">

# p /W[aeiou]rd/.match('Word')   ##<MatchData "Word">
# p /W[aeiou]rd/.match('Wdrd')    #nil
# p /W[aeiou]rd/.match('word')    #nil












