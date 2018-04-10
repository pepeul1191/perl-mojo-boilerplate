# Mojolicious Perl

### Mojo Micro Web Framework

    $ sudo apt install cpanminus
    $ curl -L https://cpanmin.us | perl - -M https://cpan.metacpan.org -n Mojolicious
    $ sudo cpanm Mojolicious::Plugin::SecureCORS
    $ sudo apt install libmojolicious-perl

### Instalar dependencias de Perl

    $ sudo cpanm JSON REST::Client JSON::XS Crypt::MCrypt Try::Tiny DBD::SQLite Data::

### Arrancar el microservicio

    $ morbo app.pl -l http://127.0.0.1:5001

Para imprimir variables:

    #print("\nA\n");print($url);print("\nB\n");
    #print("\n");print Dumper(%temp);print("\n");

---

#### Fuente

+ http://mojolicious.org/
+ http://search.cpan.org/dist/DBD-SQLite/lib/DBD/SQLite.pm
+ http://stackoverflow.com/questions/10342875/how-to-properly-use-the-try-catch-in-perl-that-error-pm-provides
+ http://search.cpan.org/~ether/Try-Tiny-0.27/lib/Try/Tiny.pm
+ http://stackoverflow.com/questions/20869123/json-decoding-in-perl
+ http://search.cpan.org/~shantanu/Crypt-MCrypt-0.07/lib/Crypt/MCrypt.pm
+ http://www.perlmonks.org/?node_id=1089381 (templates mojo)
