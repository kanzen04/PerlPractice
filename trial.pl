
$string = "foo bar we will he will bar";
@words = split / /, $string;
@matched;
foreach $word_in(@words){
	$match = $word_in;
	if( $string =~ m/^$match\s(\w+)\s/){
		push(@matched, $1);
	}
	
}
print $word_in;
print @matched;


