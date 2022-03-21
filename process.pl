#A perl script created by karamveer (Research Scholar at Pondicherry University), to add identifier to molecules in sdf file
#!/usr/bun/perl
if($#ARGV<1){
	die "Usage: perl process.pl inputfile.sdf outfile.sdf";
}
$file=@ARGV[0];
open(FH,$file);
@line=<FH>;
$i=1;
foreach $line(@line){
	if($line =~ m/\$\$\$\$\s+/){
		$line=~s/\$\$\$\$\s+/\$\$\$\$\n$i/g;
		$i++;
	}
	push(@array,$line);
}
unshift(@array,'0');
$output=@ARGV[1];
open(OUT,'>',$output);
print OUT @array;



