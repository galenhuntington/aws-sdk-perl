
package Paws::CodeCommit::GetRepositoryTriggers;
  use Moose;
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRepositoryTriggers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetRepositoryTriggersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetRepositoryTriggers - Arguments for method GetRepositoryTriggers on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRepositoryTriggers on the 
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method GetRepositoryTriggers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRepositoryTriggers.

As an example:

  $service_obj->GetRepositoryTriggers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryName => Str

The name of the repository for which the trigger is configured.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRepositoryTriggers in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

