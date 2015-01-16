# NAME

Text::CommonMark - A wrapper around the CommonMark C library

# VERSION

Version 0.0001, released 2015-01-17.

# SYNOPSIS

    use Text::CommonMark;

    my $html = commonmark_to_html('a text');
    # $html -> '<p>A text</p>'

# DESCRIPTION

Text::CommonMark is a wrapper around the [CommonMark](http://commonmark.org/) C parser. CommonMark is a
variant of [Markdown](http://daringfireball.net/projects/markdown/).

# FUNCTIONS

This package exports one function by default.

## commonmark\_to\_html($text)

It takes a CommonMark-formatted string, and returns the string parsed to html.

# REQUIREMENTS

You need to have `libcmark.so` installed, available on [Github](https://github.com/jgm/CommonMark). `libcmark.so` must be in `/usr/local/lib`.

# SEE ALSO

[Text::Markdown](https://metacpan.org/pod/Text::Markdown)

# ACKNOWLEDGMENTS

Big thanks to Ikegami and Paul Evans for helping with this on StackOverflow.

# SOURCE

[https://github.com/Csson/p5-Text-CommonMark](https://github.com/Csson/p5-Text-CommonMark)

# HOMEPAGE

[https://metacpan.org/release/Text-CommonMark](https://metacpan.org/release/Text-CommonMark)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
