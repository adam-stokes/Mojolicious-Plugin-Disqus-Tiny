# NAME

Mojolicious::Plugin::Disqus::Tiny - Mojolicious Plugin

# SYNOPSIS

    # Mojolicious
    $self->plugin('Disqus::Tiny');

    # Mojolicious::Lite
    plugin 'Disqus::Tiny';

    # In the template where comments should be
    <%= disqus_inc 'astokes' %>

# DESCRIPTION

[Mojolicious::Plugin::Disqus::Tiny](http://search.cpan.org/perldoc?Mojolicious::Plugin::Disqus::Tiny) is a [Mojolicious](http://search.cpan.org/perldoc?Mojolicious) plugin. Inserts Disqus code and associates your forum id. If you need more control over api please see [Mojolicious::Plugin::Disqus](http://search.cpan.org/perldoc?Mojolicious::Plugin::Disqus). In order to get the __shortname__ visit [https://disqus.com](https://disqus.com) and check your dashboard.

# METHODS

[Mojolicious::Plugin::Disqus::Tiny](http://search.cpan.org/perldoc?Mojolicious::Plugin::Disqus::Tiny) inherits all methods from
[Mojolicious::Plugin](http://search.cpan.org/perldoc?Mojolicious::Plugin) and implements the following new ones.

## register

    $plugin->register(Mojolicious->new);

Register plugin in [Mojolicious](http://search.cpan.org/perldoc?Mojolicious) application.

# AUTHOR

Adam Stokes [adamjs@cpan.org](http://search.cpan.org/perldoc?adamjs@cpan.org)

# COPYRIGHT

Copyright 2013- Adam Stokes

# LICENSE

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

# SEE ALSO

[Mojolicious::Plugin::Disqus](http://search.cpan.org/perldoc?Mojolicious::Plugin::Disqus), [Mojolicious](http://search.cpan.org/perldoc?Mojolicious), [Mojolicious::Guides](http://search.cpan.org/perldoc?Mojolicious::Guides), [http://mojolicio.us](http://mojolicio.us).


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/battlemidget/mojolicious-plugin-disqus-tiny/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

