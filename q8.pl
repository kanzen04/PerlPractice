#QUESTION 8

use strict;
use warnings;

print "Enter the file name: \n";
my $input_file_name = <STDIN>;
open IN, "< $input_file_name";

my %words_list;
while (my $line = <IN>) {
   chomp $line;                   # remove trailing \n

   map {
      $words_list{lc $_}++;
   } split /\s+/, $line;          # split on whitespace
}

foreach my $word (keys %words_list){
	print $word," ", "="x $words_list{$word}, "\n";
}

