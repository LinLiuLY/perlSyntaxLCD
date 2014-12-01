#!/usr/bin/perl
use Data::Dumper;

my @numbers = (
	[
		[" ","-"," "],
		["|"," ","|"],
		[" "," "," "],
		["|"," ","|"],
		[" ","-"," "]
	],
	[
		[" "," "," "],
		[" "," ","|"],
		[" "," "," "],
		[" "," ","|"],
		[" "," "," "]
	],
	[
		[" ","-"," "],
		[" "," ","|"],
		[" ","-"," "],
		["|"," "," "],
		[" ","-"," "]
	],
	[
		[" ","-"," "],
		[" "," ","|"],
		[" ","-"," "],
		[" "," ","|"],
		[" ","-"," "]
	],
	[
		[" "," "," "],
		["|"," ","|"],
		[" ","-"," "],
		[" "," ","|"],
		[" "," "," "]
	],
	[
		[" ","-"," "],
		["|"," "," "],
		[" ","-"," "],
		[" "," ","|"],
		[" ","-"," "]	
	],
	[
		[" ","-"," "],
		["|"," "," "],
		[" ","-"," "],
		["|"," ","|"],
		[" ","-"," "]
	],
	[
		[" ","-"," "],
		[" "," ","|"],
		[" "," "," "],
		[" "," ","|"],
		[" "," "," "]
	],
	[
		[" ","-"," "],
		["|"," ","|"],
		[" ","-"," "],
		["|"," ","|"],
		[" ","-"," "]
	],
	[
		[" ","-"," "],
		["|"," ","|"],
		[" ","-"," "],
		[" "," ","|"],
		[" ","-"," "]
	]
);

sub print_line {
    my($size, $number_input) = @_;

    my @matrix;

	for my $line_index(0..4) {
		my $line = "";

		for my $number(@$number_input) {
	        my @line_arr = @{$numbers[$number][$line_index]};
	        @line_arr[1] = $numbers[$number][$line_index][1] x $size;
	        
			$line .= join '', @line_arr;
		}

		if($line_index == 1 || $line_index == 3){
	        # $line = ($line."\n") x $size;
		}

		chomp $line;
		push @matrix, $line."\n";
	}

	return \@matrix;
}


sub print_lcd {
	my $numbers_sizes = shift;

	my $min = 2;
	my $max = 5;
	my $min_line_count = 7;
	my $max_line_count = 13;

	for my $line_index(0..13) {
		foreach $number_size(@$numbers_sizes) {
			my $size = $number_size->{size};
			my $numbers = $number_size->{numbers};

			print Dumper($line_index);
			print Dumper($size);
			print Dumper($numbers);

			my $tmp = line_at($line_index, $size, $numbers);
			# print $tmp;
		    
		    # print_line($size, $numbers);
		}
	}
}

sub line_at {
	my($index, $size, $number_input) = @_;

	my @matrix = @{print_line($size, $number_input)};

	return $matrix[$index];
}


