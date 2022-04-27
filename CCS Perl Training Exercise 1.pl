# Exercise 1 – Definitions, Scalar, Array
# 1) List the three fundamental data types used in Perl.
print("Scalar\nArray\n\Hash\n");

#2) What is the definition of:
# a) A scalar, and give an example?
# b) A list and an array, and give an example?
print("Contains a single unit of variables. start with dollar sign. such as $foo=\"Tuesday\" or $num=2022\n");
print("Contains ordered variables. start with @ sign. such as @array= qw /apple pear banana/");

# 3) What is the result of this code and why?
# @ary = (1 .. 4);
# ($a, $b, ’fred’, $c) = @ary
print("print a list with ordered values 1, 2, 3, 4\n");
print("assign 1 to \$a, 2 to \$b, 3 to \$fred, 4 to \$c, because \$a \$b \$c are scalar values\n");


# 4) What are the contents of @b after this code? and Why?
# @c = qw( 1 2 3 4 5 6 7 8 9 )
# (@a, @b) = (@c, 1, 2, 3)
print("Because a is array. and greedy allocated all values to array a. so \@b is undefined\n");

#5) How many elements can you fit in an array?
print("Can fit in as many as i want and also with different data types\n");

# 6) How many elements in the following array after these two lines?
# my @ary = (1, 4, -17, 88.2, "lodger")
# @ary = ()
print("5 and 0 elements\n");

# 7) What does @array look like after this? Is it different to the result from Q.6?
# my @ary = undef;
print("Even though it doesn't showing anything at Console. it is different from Q.6 as doesn't define an array. Simmilar like none or null.\n");

# 8) How do you make an anonymous array and an anonymous hash, can you give an example each?
@_=();
%_ ={};

# 9) Write code to populate an array with the numbers 1 to 100 in reverse order (Hints: you can not do (100..1))
@array =(1..100);
@new_array = reverse @array;
print("@new_array\n");

# 10) Write code to remove all the even numbers from your array (Hints: it is much easier to build a new array rather than removing odd numbers from the existing array)
@new_array = ();
sub remove_even() {
     my @old_array= @_;
     foreach $num(@old_array){
	 if ($num % 2 != 0) {push (@new_array, $num);}
     }
     return @new_array;	
}

@res = &remove_even(1..100);
print("@res\n");


# 11) Write code to calculate the sum of all the elements in the array.
$sum = 0;
sub add() {
  my(@array)= @_;
  for (@array){$sum+=$_;}
  return $sum;
}

$res = &add(1..100);
print("$res\n");


# 12) You have two arrays:
@one = (1, 3, 19, 5, 7, 9, 2, 13, 15, 27, 18);
@two = (0, 1, 1, 2, 3, 5, 8, 36, 21);
# Write code to:
# a) Show which one has the least number of elements.
# b) Show which one has the largest number in it.
# c) Remove all the ‘1’s from both arrays.
# (Hints: Assume you do not know where the positions of all the‘1’s are.
# It can be very easy if you know ‘grep’ and some regex.)
@one_sorted = sort({$a<=>$b}@one);
$min_one= @one_sorted[0];
@two_sorted = sort({$a<=>$b}@two);
$min_two = @two_sorted[0];
$res = $min_one > $min_two? "\@two" : "\@one";
print("$res has the least number of elements\n");
$max_one= @one_sorted[-1];
$max_two = @two_sorted[-1];
$res = $max_one > $max_two? "\@one" : "\@two";
print("$res has the largest number of elements\n");

@one = grep(/[^1]/, @one);
print("@one\n");

@two = grep(/[^1]/, @two);
print("@two");