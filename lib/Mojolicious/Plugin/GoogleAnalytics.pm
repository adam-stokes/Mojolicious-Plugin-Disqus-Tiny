package Mojolicious::Plugin::Disqus::Tiny;

use strictures 1;
use Mojo::Base 'Mojolicious::Plugin';

# VERSION

has 'template' => 'disqus_template';

sub register {
    my ($plugin, $app) = (shift, shift);
    push @{$app->renderer->classes}, __PACKAGE__;

    $app->helper(disqus => sub {$plugin});

    $app->helper(
        disqus_inc => sub {
            my $self         = shift;
            my $forum_id = shift;

            die "No disqus ID defined" unless defined $forum_id;
            $self->render(
                template => $self->disqus->template,
                partial  => 1,
            );
        }
    );
}

1;

__DATA__

@@ disqus_template.html.ep

%= javascript begin
   /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
   var disqus_shortname = '${forum_id}'; // required: replace example with your forum shortname

   /* * * DON'T EDIT BELOW THIS LINE * * */
   (function() {
   var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
   dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
   (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
   })();
%= end

__END__

=head1 NAME

Mojolicious::Plugin::Disqus::Tiny- Mojolicious Plugin

=head1 SYNOPSIS

  # Mojolicious
  $self->plugin('Disqus::Tiny');

  # Mojolicious::Lite
  plugin 'Disqus::Tiny';

  # In your layout template
  <%= disqus_inc 'astokes' %>

=head1 DESCRIPTION

L<Mojolicious::Plugin::Disqus::Tiny> is a L<Mojolicious> plugin. Inserts Disqus code and associates your forum id. If you need more control over api please see L<Mojolicious::Plugin::Disqus>.

=head1 METHODS

L<Mojolicious::Plugin::Disqus::Tiny> inherits all methods from
L<Mojolicious::Plugin> and implements the following new ones.

=head2 register

  $plugin->register(Mojolicious->new);

Register plugin in L<Mojolicious> application.

=head1 SEE ALSO

L<Mojolicious::Plugin::Disqus>, L<Mojolicious>, L<Mojolicious::Guides>, L<http://mojolicio.us>.

=cut
