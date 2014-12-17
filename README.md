# NAME

Text::CommonMark - A wrapper around the CommonMark C library

# SYNOPSIS

    use Text::CommonMark;

    my $html = commonmark_to_html('a text');
    # $html -> '<p>A text</p>'

# DESCRIPTION

Text::CommonMark is just a wrapper around the [CommonMark](http://commonmark.org/) C parser. CommonMark is a
variant of [Markdown](http://daringfireball.net/projects/markdown/).

# FUNCTIONS

This package exports one function by default.

## commonmark\_to\_html($text)

It takes a CommonMark-formatted string, and returns the string parsed to html.

# REQUIREMENTS

You need to have installed `libcmark.so`, available on [Github](https://github.com/jgm/CommonMark). `libcmark.so` must be in `/usr/local/lib`.

# SEE ALSO

[Text::Markdown](https://metacpan.org/pod/Text::Markdown)

# ACKNOWLEDGMENTS

Big thanks to Ikegami and Paul Evans for helping with this.

# DISCLAIMER

This is not a part of either the CommonMark och Markdown projects.

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT

Copyright 2014 - Erik Carlsson

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
