# Python code to reverse a string
# using loop

def reverse(s):
  str = ""
  for i in s:
	str = i + str
  return str

s = "Lokesh avula"

print (s)

print (reverse(s))

