# $Id: Makefile.PL,v 1.1 2004/06/23 06:30:21 asc Exp $

use ExtUtils::MakeMaker;

WriteMakefile(
	      'NAME'	=> 'XML::XBEL',
	      ($[ >= 5.005) ?
	      (AUTHOR   => 'Aaron Straup Cope (ascope@cpan.org)',
	       ABSTRACT => 'OOP for reading and writing XBEL documents') : (),
	      'VERSION_FROM' => 'lib/XML/XBEL.pm',
	      'PREREQ_PM'    => {
				 XML::LibXML  => '1.58',
				 Date::Format => '0',
				 Test::More   => '0',
				},
	      dist	        => {COMPRESS => 'gzip', SUFFIX => 'tar.gz'},
);
