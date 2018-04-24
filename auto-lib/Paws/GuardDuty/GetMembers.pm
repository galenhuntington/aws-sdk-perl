
package Paws::GuardDuty::GetMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/member/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetMembers - Arguments for method GetMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMembers on the 
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMembers.

As an example:

  $service_obj->GetMembers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the GuardDuty member accounts that you want to
describe.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account whose members
you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

