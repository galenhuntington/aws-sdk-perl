
package Paws::Route53Domains::UpdateDomainContactPrivacy;
  use Moose;
  has AdminPrivacy => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantPrivacy => (is => 'ro', isa => 'Bool');
  has TechPrivacy => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContactPrivacy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::UpdateDomainContactPrivacyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::UpdateDomainContactPrivacy - Arguments for method UpdateDomainContactPrivacy on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainContactPrivacy on the 
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method UpdateDomainContactPrivacy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainContactPrivacy.

As an example:

  $service_obj->UpdateDomainContactPrivacy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AdminPrivacy => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to update the privacy setting for.



=head2 RegistrantPrivacy => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.



=head2 TechPrivacy => Bool

Whether you want to conceal contact information from WHOIS queries. If
you specify C<true>, WHOIS ("who is") queries will return contact
information for our registrar partner, Gandi, instead of the contact
information that you enter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainContactPrivacy in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

