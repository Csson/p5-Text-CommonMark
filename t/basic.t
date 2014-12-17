use strict;
use Test::More;
use Text::CommonMark;

is commonmark_to_html('hello'), "<p>hello</p>\n", 'parsed commonmark';

done_testing;

