
package Paws::Route53Domains::UpdateDomainNameservers;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FIAuthKey => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::Nameserver]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainNameservers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::UpdateDomainNameserversResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::UpdateDomainNameservers - Arguments for method UpdateDomainNameservers on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainNameservers on the 
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method UpdateDomainNameservers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainNameservers.

As an example:

  $service_obj->UpdateDomainNameservers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to change name servers for.



=head2 FIAuthKey => Str

The authorization key for .fi domains



=head2 B<REQUIRED> Nameservers => ArrayRef[L<Paws::Route53Domains::Nameserver>]

A list of new name servers for the domain.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainNameservers in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

