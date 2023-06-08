# You need to write a function, that returns the 
# first non-repeated character in the given string.

# If all the characters are unique, return the first 
# character of the string.
# If there is no unique character, return None.

# You can assume, that the input string has always 
# non-zero length.

# Examples
# "test"   returns "e"
# "teeter" returns "r"
# "trend"  returns "t" 
# (all the characters are unique)
# "aabbcc" returns None 
# (all the characters are repeated)

def func(sent):
    for i in sent:
        if sent.count(i) == 1:
            return i
        else:
            return None

print(func("trend"))      