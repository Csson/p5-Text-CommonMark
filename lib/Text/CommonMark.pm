package Text::CommonMark;

# VERSION
# ABSTRACT: A wrapper around the CommonMark C library (deprecated)

use strict;
use warnings;
use Exporter 'import';
use CommonMark;
our @EXPORT = qw/commonmark_to_html/;

sub commonmark_to_html {
    return CommonMark->markdown_to_html(shift);
}

1;

__END__

=head1 SYNOPSIS

  use Text::CommonMark;

  my $html = commonmark_to_html('a text');
  # $html -> '<p>A text</p>'

=head1 DESCRIPTION

Deprecated, will be removed from CPAN soon.

This is now a thin wrapper around L<CommonMark>. Use that directly instead.

=cut
