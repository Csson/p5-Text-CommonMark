package Text::CommonMark;

use strict;
use warnings;
use Exporter;
our @EXPORT = qw/commonmark_to_html/;

sub commonmark_to_html {
    return c_commonmark_to_html(shift);
}

use Inline C => config => libs => '-L/usr/local/lib/ -lcmark';
use Inline C => <<'__EOC__';

SV* c_commonmark_to_html(SV* text_sv) {
    STRLEN text_len;
    const char* text = SvPVutf8(text_sv, text_len);
    const char* html = cmark_markdown_to_html(text, text_len);
    SV* html_sv = newSVpvn_flags(html, strlen(html), SVf_UTF8);
    free(html);
    return html_sv;
}

__EOC__

1;

__END__

=encoding utf-8

=head1 NAME

Text::CommonMark - A wrapper around the CommonMark C library

=head1 SYNOPSIS

  use Text::CommonMark;

  my $html = commonmark_to_html('a text');
  # $html -> '<p>A text</p>'

=head1 DESCRIPTION

Text::CommonMark is just a wrapper around the L<CommonMark|http://commonmark.org/> C parser. CommonMark is a
variant of L<Markdown|http://daringfireball.net/projects/markdown/>.

=head1 FUNCTIONS

This package exports one function by default.

=head2 commonmark_to_html($text)

It takes a CommonMark-formatted string, and returns the string parsed to html.

=head1 REQUIREMENTS

You need to have installed C<libcmark.so>, available on L<Github|https://github.com/jgm/CommonMark>. C<libcmark.so> must be in C</usr/local/lib>.

=head1 SEE ALSO

L<Text::Markdown>

=head1 ACKNOWLEDGMENTS

Big thanks to Ikegami and Paul Evans for helping with this.

=head1 DISCLAIMER

This is not a part of either the CommonMark och Markdown projects.


=head1 AUTHOR

Erik Carlsson E<lt>info@code301.comE<gt>

=head1 COPYRIGHT

Copyright 2014 - Erik Carlsson

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

