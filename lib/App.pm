package App;
use Mojo::Base 'Mojolicious';
use Mojo::Log;
my $log = Mojo::Log->new;
# This method will run once at server start
sub startup {
  my $self = shift;
  $self->hook(before_dispatch => sub {
    my $c = shift;
    #$c->res->headers->header('Access-Control-Allow-Origin' => '*');
    $c->res->headers->header('x-powered-by' => 'Mojolicious (Perl)');
    $c->res->headers->header('Server' => 'Ubuntu');
  });
  # Load configuration from hash returned by "my_app.conf"
  my $config = $self->plugin('Config');
  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer') if $config->{perldoc};
  # Router
  my $r = $self->routes;
  # Plugin
  $self->plugin('App::Plugin::SessionTrue');
  # Normal route to controller
  $r->get('/')->to('home#index');
  $r->get('/departamento/listar')->to('departamento#listar');
  $r->get('/rest/:sistema_id')->to('home#rest');
  $r->get('/servicio/listar')->to('servicio#listar');
}

1;
