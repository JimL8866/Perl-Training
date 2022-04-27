# Exercise 2 – Array (2 hrs)

# 1) For each line below write the:
# a) Contents of left hand side
# b) Context of right hand side
# For example: @list = (1, 2, 3);
# Contents of the left hand side: (1, 2, 3)
# Context of the right hand side: a list
# $list = @list;
# ($list) = @list;
# $list = (1, 2, 3);
# @list = 1, 2, 3;
# $list = 1, 2, 3;
print("Contents of the left hand side: list with values        Context of the right hand side: length of the list and is 0\n");
print("Contents of the left hand side: list with values        Context of the right hand side: allocated \@list[0] to scalar vlue\$list and currently is undefined \n");
print("Contents of the left hand side: (1,2,3)        Context of the right hand side: length of the list and is 3\n");
print("Contents of the left hand side: 1, 2, 3        Context of the right hand side: assign the element 1 to array list");
print("Contents of the left hand side: 1, 2, 3        Context of the right hand side: scalar value and it is 1\n");


# 2) What do the following lines do?
# And, write a shorter alternate version (as simplified as you can).
$str = 'Items: ';
@list = ('one', 'two', 'three');
# foreach my $item (@list) {
# $str .= $item;
# }
# print "$str\n";

print("it iterrates an array and use string concatenation and print a new string 'Items: onetwothree'\n");
print($str.join("",@list));



# 3) Describe the purpose of the following lines:
# my $max_len = 0;
# foreach my $item (@list) {
# $max_len = length $item if (length $item > $max_len);
# }
# my $str = '';
# foreach my $item (@list) {
# $str .= pack("A$max_len", $item);
# }
print("\n")
print("get the maximum length of elements in an array\n");


# 4) Assume you have an array @array = (110.14, 95.16, 213.01, 4.95, 87.12);
# Write code to print all 5 balances in a column like this
# (don’t forget they are right aligned):
# Balance
# 110.14
# 95.16
# 213.01
# 4.95
# 87.12
# 5
@array = (110.14, 95.16, 213.01, 4.95, 87.12);
printf("%15s\n", Balance);
for (@array){printf("%15s\n", $_);}

# 5) You have two arrays:
@one = (1, 3, 5, 7, 9, 11, 13, 15, 17, 19);
@two = (0, 1, 1, 2, 3, 5, 8, 13, 21);
# a) Write some code to create this third array (Hints: It is the sorted union of the first two arrays with duplicates removed)
# @three = (0, 1, 2, 3, 5, 7, 8, 9, 11, 12, 15, 17, 19, 21);
# b) What is the effect of running the following on array @three?
# (What is the difference between $num++ and $_++)
# foreach my $num (@three) {
# $num++;
# $_++;
# }
my %three;
for $item(@one, @two){
	$three{$item} = 1;
}
@three = sort({$a<=>$b}keys(%three));
print("@three\n");

