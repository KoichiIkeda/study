#! perl 

my $file = shift;
my $word = shift;

open FH, $file;

while ($line = <FH>) {
	chomp $line;
	if ($line =~ m!$word!) {
		print $line . "\n";
	}
}

close FH;
