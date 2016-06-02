#QUESTION 7



#7 a.
#PATH variable stores the path to the $ENV environment.
#!usr/bin/perl 
use strict;
use warnings;

my $num = keys %ENV;
print "\nNumber of environment vaiables in %ENV: $num";
my $path = $ENV{'PATH'};
print "\nPATH in %ENV:\n $path";
my @dir= split(':', $path);
my $num_dir = @dir;
print "\nNumber of directory: ",int($num_dir), "\n";
my @sorted_dir = sort {"\L$a" cmp "\L$b"} @dir;
foreach my $dir (@sorted_dir){
	print "$dir\n";
}
push @dir, $ENV{'PWD'};
my $new_path_dir = join(':', @dir);
$ENV{'PATH'} = $new_path_dir;
print "\nNew Path with curret directory:\n$ENV{'PATH'}\n";


system("./while.pl");

#if i use do 'while.pl', the code does work.
#do 'while.pl';

