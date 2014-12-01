use Data::Dumper;

my $a = 'a';
my @b = ('a', 'b', 'c');
my %c = ('a' => [1,2,3], 'b' => ['1','2','3']);

print "$a\n";

print "@b\n";

# print "%c\n";

while(($key,$value) = each %c){
	print "$key => @$value \n";
}

print "------------------ref----------------------------\n";

my $d = ['4', '5', '6'];

my $count = scalar @$d;
print "\$count $count\n";

my $array_end_index = $#$d;
print "$array_end_index\n";

my $e = {
	f => [7,8,9],
	g => [10,11,12]
};

print "@$d\n";

foreach $key (sort keys %$e){
	my $value = $e->{$key};
	my $a = $e->{$key}->[1];    
	print "@$value\n";
	print "$a\n";
}


print "-------------------------------------------\n";

sub test{
	my($a, $b) = @_;
	print Dumper($a);
	print Dumper($b);
}

test(\@b, \%c);

foreach my $index (0..$#$d) {
	my $number = $d->[$index];
	if ($number == '5'){
		print "yes\n";
		print "$index\n";
	}
}

if ("5" ~~ @$d) {
	print "real yes!\n"
}
























