#QUESTION 9 (BONUS QUESTION)

use strict;
use warnings;

print "Enter the file name: \n";
my $input_file_name = <STDIN>;
open IN, "< $input_file_name";

my %words_list;

=do
while (my $line = <IN>) {
   chomp $line;                   # remove trailing \n

   map {
      $words_list{lc $_}++;
   } split /\s+/, $line;          # split on whitespace
}

foreach my $word (keys %words_list){
	print $word," ", "="x $words_list{$word}, "\n";
}
=cut


while(my $line = <IN>){
	chomp $line;
	my @words = split / /, $line;
	foreach my $word(@words){
		%words_list{ for (my $word_in = 




my $word_in = @words =~ m/$word_in\s*(w+)/;

tring = "foo bar we will he will bar";
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
