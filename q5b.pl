#QUESTION 5b

use strict;
use warnings;

my $plaintext = "the python programming language was invented by guido van rossum, a dutch computer programmer, about 25 years ago. van rossum defined his goals for python as follows: an easy and intuitive language just as powerful as major competitors; open source, so anyone can contribute to its development; code that is as understandable as plain english; suitability for everyday tasks, allowing for short development times";

my $plaintext_after_encyrption = "pda lupdkj lnkcnwiiejc hwjcqwca swo ejrajpaz xu cqezk rwj nkooqi, w zqpyd ykilqpan lnkcnwiian, wxkqp 25 uawno wck. rwj nkooqi zabejaz deo ckwho bkn lupdkj wo bkhhkso: wj awou wjz ejpqepera hwjcqwca fqop wo lksanbqh wo iwfkn ykilapepkno; klaj okqnya, ok wjukja ywj ykjpnexqpa pk epo zarahkliajp; ykza pdwp eo wo qjzanopwjzwxha wo lhwej ajcheod; oqepwxehepu bkn aranuzwu pwogo, whhksejc bkn odknp zarahkliajp peiao";

sub encryption{
	my $c = shift;
	my $distance = ord($c);
	while($distance >= 97 && $distance <= 122){
		if($distance > 100){
			$distance -= 4; 
			return chr($distance);
		}
		if($distance <= 100){
			$distance += 22;
			return chr($distance);
		}
	}
	return $c;
}

my @individual_characters = split //, $plaintext;
my @encrypted_text = map{encryption $_} @individual_characters;
my $encrypted_text = join('', @encrypted_text);

print "Encrypted text:\n $encrypted_text \n";


print "\nPrinted only if encryption successful: Plaintext is Encrypted \n" if $encrypted_text eq $plaintext_after_encyrption;
