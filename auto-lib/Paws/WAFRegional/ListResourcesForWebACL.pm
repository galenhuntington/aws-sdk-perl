
package Paws::WAFRegional::ListResourcesForWebACL;
  use Moose;
  has WebACLId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourcesForWebACL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::ListResourcesForWebACLResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListResourcesForWebACL - Arguments for method ListResourcesForWebACL on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourcesForWebACL on the 
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method ListResourcesForWebACL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourcesForWebACL.

As an example:

  $service_obj->ListResourcesForWebACL(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> WebACLId => Str

The unique identifier (ID) of the web ACL for which to list the
associated resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourcesForWebACL in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

