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














