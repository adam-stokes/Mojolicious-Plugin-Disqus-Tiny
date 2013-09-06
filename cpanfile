requires 'Mojo::Base';

on build => sub {
    requires 'Mojolicious::Lite';
    requires 'Test::Mojo';
    requires 'Test::More';
};
