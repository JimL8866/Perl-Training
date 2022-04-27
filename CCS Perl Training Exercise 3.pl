# Exercise 3 – Regular Expression, References, Hash 
# 1) Describe the purpose of the following line. Write an improved version to do the same thing.
# (hints: statement if (condition); is easier to read)
# $format =~ /L|R|C|F/ or die;
print("use to match a variable has either L or R or C or F if doesn't match display error message\n");
sub format(){
	my$_ = shift @_;
	if (/L|R|C|F/) {print("$_ has been found");}
	else {die "Error: $!"}
}

&format("Foo", "bar", "egg");

# 2) Describe the purpose of the following, and also write an improved version to do the same thing. (hints: do not use “unless” and you can also simplify the regex):
# unless ($format =˜ /L/ or $format =˜ /R/ or $format =˜ /C/) {
# die "Invalid format supplied: $format";
# }
print("\ncheck if variable contains L or R or C.if not diplay error message\n");

$_ = "Foo";
print("Invalid format supplied:$_\n") if /[^LRC]/;

# 3) What does this do to the contents of $line?
# $line =˜ s/\b(\w)/\U$1/g;
print("begin with a char then replace it to a upper case of that char.In additon will find and replace all matched the same pattern\n");


# 4) Describe the operation of the following lines:
# for ($string) {
# s/ˆ\s+//;
# s/\s+$//;
# }

print("remove leading and trailing spaces of the string variable\n");

# 5) Make an array (with two elements) called @ary and then take a reference to it called $ref. Now make a new reference called $ref2 by making a similar array in one line (without first making a real array).
@ary = qw /foo bar/;
$ref = \@ary;
$ref2 = $ref;
print("@$ref2\n");

# 6) What are TWO main reasons references are useful in Perl?
print("create complex data structure and after dereference and manipulate data\n");

# 7) The bank wants to send only one letter to each customer. Write code to make a new list that contains each name only once (hints: hash is good for de-dup).
@savings = ('bill', 'ted', 'mary', 'george', 'wilma', 'joe', 'anne');
@loans = ('anne', 'harry', 'ted', 'frank', 'wilma');
my %hash;
for $item(@savings, @loans) {
    $hash{$item}=1;
}
@name = sort keys(%hash);
print("@name\n");
