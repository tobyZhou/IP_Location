#!/usr/bin/perl -w
#this is just a comment…
print "Hello World";

use strict;
use warnings;

use MaxMind::DB::Writer::Tree;
use Net::Works::Network;

my $filename = 'test.mmdb';

my %types = (
    country      => 'utf8_string',
    country_code => 'utf8_string',
    city         => 'utf8_string',
);

my $tree = MaxMind::DB::Writer::Tree->new(
	database_type => "test_for_build",
	description => { en=> 'my first mmdb'},
	ip_version => 4,
	map_key_type_callback => sub {$types{ $_[0] }},
	record_size => 24,
);


# Need read inputs from csv files
my %csv_inputs = ();





# Write the database to disk.
#open my $fh, '>:raw', $filename;
#$tree->write_tree( $fh );
#close $fh;

print "$filename has now been created\n";