use strict;
use Test::More;

plan tests => 7;

use_ok("XML::XBEL");

my $xbel = XML::XBEL->new();
isa_ok($xbel,"XML::XBEL");

ok($xbel->parse_file("./t/test.xbel"),
   "parsed xbel");

cmp_ok($xbel->title(),"eq","Bookmarks",
       sprintf("xbel's title is %s",$xbel->title()));

cmp_ok(scalar($xbel->bookmarks()),"==",41,
       "xbel has 41 bookmarks");

cmp_ok(scalar($xbel->folders()),"==",2,
      "xbel has 2 folders");

cmp_ok(scalar($xbel->aliases()),"==",1,
       "xbel has 1 aliases");

# $Id: 75-parse.t,v 1.2 2004/06/23 06:23:57 asc Exp $
