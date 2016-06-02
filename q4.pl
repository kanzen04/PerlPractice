#Question 4

use strict; 
use warnings;

my $input_file_name = $ARGV[0];
open FILEIN, "< $input_file_name";

while(my $next = <FILEIN>){
	chomp $next;
	if(-e $next){
		print "E\t";
	
		if (-T $next){
			print "T\t";
		}else{
			print "-\t";
		}	
	
		if (-r $next){
			print "R \t";
		}else{
			print "-\t";
		}
	
		if(-w $next){
			print "W\t";
		}else{
			print "-\t";
		}

		if(-x $next){
			print "X\t";
		}else{
			print "-\t";
		}
		print "$next \n";
	}else{
		print "-\t-\t-\t-\t-\t$next \n";
	}
}

