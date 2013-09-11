
#define constants and global
CONSTANT = 3
CONSTANT2 = 4
$my_string = 'string de nicolas'
$my_symbol = :ceciestunsymbole
$my_array = [1, 2, 3]
$my_float = 1.2
$my_nil = nil
$my_boolean = true

#say hello
def hello
	return "Hello, Ruby World!"
end 

#supports default parameters values
def nothing(p1=1,p2=2,p3=3)
end

#computes fibonacci
def fibonacci(n)
  a = [0]
  n.times do |i|
    if i==0
      a[i] = 1
    elsif i==1
      a[i] = 1
    else
      a[i] = a[i-1] + a[i-2]
    end  
  end
  return a[n-1]
end

# tell me the biggest renvoyer le plus grand entre 3 chiffres
def who_is_bigger(a, b, c)
 if (a == nil or b == nil or c == nil)
 return "nil detected"
 else  
  if    (a > b and a > c )
 	return "a is bigger" 
  elsif (b > a and b > c )
 	return "b is bigger" 
  else  
 	return "c is bigger" 
  end
 end
end

# does crazy things on strings :Reverse, upcase then removes all L, T and A.
def reverse_upcase_noLTA(p1)
	p1.reverse.upcase.delete  "LTA"   
end

# finds 42 : array_42 takes an array as parameter and returns:
  # - true if there's a 42 in the array items
  # - false otherwise
def array_42(array)
  a = false
	array.each {|i| if i == 42 then a = true end}
  return a  
end


 # does crazy things on arrays : The magic_array function takes an array of number or an array of
  # array of number as parameter and return the same array :
  # - flattened (i.e. no more arrays in array)
  # - reversed
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
def magic_array(array)
array.flatten.reverse.map! {|i| i = i*2}.delete_if {|i| i.modulo(3) == 0}.uniq.sort
end