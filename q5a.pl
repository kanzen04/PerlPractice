#QUESTION 5a

use strict;
use warnings;

my $encrypted_text = "pda lupdkj lnkcnwiiejc hwjcqwca swo ejrajpaz xu cqezk rwj nkooqi, w zqpyd ykilqpan lnkcnwiian, wxkqp 25 uawno wck. rwj nkooqi zabejaz deo ckwho bkn lupdkj wo bkhhkso: wj awou wjz ejpqepera hwjcqwca fqop wo lksanbqh wo iwfkn ykilapepkno; klaj okqnya, ok wjukja ywj ykjpnexqpa pk epo zarahkliajp; ykza pdwp eo wo qjzanopwjzwxha wo lhwej ajcheod; oqepwxehepu bkn aranuzwu pwogo, whhksejc bkn odknp zarahkliajp peiao";

sub decryption{
	my $c = shift;
	my $distance = ord($c);
	while($distance >= 97 && $distance <=122){
		$distance += 4;
		if ($distance > 122){
			$distance = ord($c) - 22;
			return chr($distance);
		}
		return chr($distance);	
	}
	return $c;
}

my @individual_characters = split //, $encrypted_text;
my @decrypted_text = map{decryption $_} @individual_characters;
my $decrypted_text = join('', @decrypted_text);

print "Decrypted text:\n $decrypted_text \n";

