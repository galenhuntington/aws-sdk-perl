
package Paws::CodeBuild::UpdateWebhook;
  use Moose;
  has BranchFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'branchFilter' );
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName' , required => 1);
  has RotateSecret => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'rotateSecret' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWebhook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::UpdateWebhookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateWebhook - Arguments for method UpdateWebhook on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWebhook on the 
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method UpdateWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWebhook.

As an example:

  $service_obj->UpdateWebhook(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 BranchFilter => Str

A regular expression used to determine which branches in a repository
are built when a webhook is triggered. If the name of a branch matches
the regular expression, then it is built. If it doesn't match, then it
is not. If branchFilter is empty, then all branches are built.



=head2 B<REQUIRED> ProjectName => Str

The name of the AWS CodeBuild project.



=head2 RotateSecret => Bool

A boolean value that specifies whether the associated repository's
secret token should be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWebhook in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

