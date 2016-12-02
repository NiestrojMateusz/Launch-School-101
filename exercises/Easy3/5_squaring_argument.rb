def multiply(a, b)
  a * b
end

def square(a)
  multiply(a, a)
end

p square(5)

def power(a,n)
  multiply(a, a) * a**(n-a)
end