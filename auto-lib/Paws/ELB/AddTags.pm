
package Paws::ELB::AddTags;
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::AddTagsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AddTagsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::AddTags - Arguments for method AddTags on L<Paws::ELB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTags on the 
L<Elastic Load Balancing|Paws::ELB> service. Use the attributes of this class
as arguments to method AddTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTags.

As an example:

  $service_obj->AddTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerNames => ArrayRef[Str|Undef]

The name of the load balancer. You can specify one load balancer only.



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::ELB::Tag>]

The tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTags in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

