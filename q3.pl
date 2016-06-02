#Question 3

use strict; 
use warnings;

my $number_of_questions = $ARGV[0];
print "You have total of $number_of_questions challenges. Get ready. Start! \n"; 

my $iter_num = 0;
my $total_score = 0;

do{
	$iter_num += 1;
	my @available_operations = ('+', '-');
	my $first_number = int(rand 20)+1;
	my $second_number = int(rand 30)+1;
	my $operator = $available_operations[rand @available_operations];

	print "$first_number $operator $second_number = ";
	my $input = <STDIN>;
	unless($operator eq '-'){
		my $correct_answer = $first_number + $second_number;
		unless(!($correct_answer == $input)){
			print "Excellent! \n";
			$total_score += 1;
		}
	}
	unless($operator eq '+'){
		my $correct_answer = $first_number - $second_number; 
		unless(!($correct_answer == $input)){
			print "Excellent! \n";
			$total_score += 1;
		}

	}
}until($iter_num == $number_of_questions);

my $percentage_acheived = ($total_score/$number_of_questions)*100;
$percentage_acheived = sprintf "%.2f", $percentage_acheived;
print "Your score is $total_score out of $number_of_questions. That's $percentage_acheived% correct. Congrats.\n";



