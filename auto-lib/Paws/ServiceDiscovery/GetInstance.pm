
package Paws::ServiceDiscovery::GetInstance;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::GetInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetInstance - Arguments for method GetInstance on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstance on the 
L<Amazon Route 53 Auto Naming|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method GetInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstance.

As an example:

  $service_obj->GetInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The ID of the instance that you want to get information about.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service that the instance is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstance in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

