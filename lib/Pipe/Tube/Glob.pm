package Pipe::Tube::Glob;
use strict;
use warnings;

use base 'Pipe::Tube';

our $VERSION = '0.04';

sub init {
    my ($self, @patterns) = @_;
    @{ $self->{patterns} } = @patterns;
    
    return $self;
}

sub finish {
    my ($self) = @_;

    return glob join " ", @{ $self->{patterns} };
}

# this module should be rewritten using opendir
# the patterns should be either unix wilde cards or Perl regexes (with a flag indicating which one)
#

1;

