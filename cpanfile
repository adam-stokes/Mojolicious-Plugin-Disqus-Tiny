requires 'Mojo::Base';
requires 'strictures', '1';

on build => sub {
    requires 'Mojolicious::Lite';
    requires 'Test::Mojo';
    requires 'Test::More';
};
