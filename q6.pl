#QUESTION 6

use strict;
use warnings;

print "Enter the name of the HTML file: \n";
my $input_file_name = <STDIN>;
open INPUT, "< $input_file_name";

#output file
open OUTPUT, "> images.html";

my @links;
while(<INPUT>){
	$a = $_;
	if($a =~ m/(http:\/\/(3|4).[^\s]+\.jpg)/g){
		push(@links, $1);
	}
}

my $length_link = @links;
print "\n\nNumber of matching links found: $length_link \n";

print OUTPUT qq(<html>\n<title>337 A2 HTML image</title>\n<body>\n);
for (my $a=0; $a < $length_link; $a++){
	print OUTPUT qq(<img src="$links[$a]">\n);
}
print OUTPUT qq(</body>\n</html>\n);

close INPUT;
close OUTPUT;


