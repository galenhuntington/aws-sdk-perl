
package Paws::SSM::GetDefaultPatchBaseline;
  use Moose;
  has OperatingSystem => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDefaultPatchBaseline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetDefaultPatchBaselineResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetDefaultPatchBaseline - Arguments for method GetDefaultPatchBaseline on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDefaultPatchBaseline on the 
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetDefaultPatchBaseline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDefaultPatchBaseline.

As an example:

  $service_obj->GetDefaultPatchBaseline(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 OperatingSystem => Str

Returns the default patch baseline for the specified operating system.

Valid values are: C<"WINDOWS">, C<"AMAZON_LINUX">, C<"UBUNTU">, C<"REDHAT_ENTERPRISE_LINUX">, C<"SUSE">, C<"CENTOS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDefaultPatchBaseline in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

