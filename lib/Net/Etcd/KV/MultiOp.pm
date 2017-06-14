use utf8;
package Net::Etcd::KV::Op;

use strict;
use warnings;

use Moo;
use Types::Standard qw(InstanceOf Str Int Bool HashRef ArrayRef);
use MIME::Base64;
use Data::Dumper;
use JSON;

#with 'Net::Etcd::Role::Actions';

use namespace::clean;

=head1 NAME

Net::Etcd::KV::Op

=cut

our $VERSION = '0.009';

=head1 DESCRIPTION

Op


=head1 ACCESSORS

=head2 request_range

=cut

has request_range => (
    is       => 'ro',
);

=head2 request_put 

=cut

has request_put => (
    is     => 'ro',
	isa => InstanceOf ['Net::Etcd::KV::Put'],
);

=head2 request_delete_range 

=cut

has request_delete_range => (
    is     => 'ro',
);

1;
