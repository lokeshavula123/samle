# Python code to reverse a string
# using loop

def reverse(s):
  str = ""
  for i in s:
	str = i + str
  return str

s = "Lokesh"

print (s)

print ("The reversed string(using loops) is : ",end="")
print (reverse(s))

