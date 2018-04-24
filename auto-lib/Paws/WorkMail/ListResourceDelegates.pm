
package Paws::WorkMail::ListResourceDelegates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceDelegates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::ListResourceDelegatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListResourceDelegates - Arguments for method ListResourceDelegates on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceDelegates on the 
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method ListResourceDelegates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceDelegates.

As an example:

  $service_obj->ListResourceDelegates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of maximum results in a page.



=head2 NextToken => Str

The token used to paginate through the delegates associated with a
resource.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization that contains the resource for
which delegates are listed.



=head2 B<REQUIRED> ResourceId => Str

The identifier for the resource whose delegates are listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceDelegates in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

