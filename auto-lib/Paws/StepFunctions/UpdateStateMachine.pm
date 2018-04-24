
package Paws::StepFunctions::UpdateStateMachine;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' );
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStateMachine');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::UpdateStateMachineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::UpdateStateMachine - Arguments for method UpdateStateMachine on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStateMachine on the 
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method UpdateStateMachine.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStateMachine.

As an example:

  $service_obj->UpdateStateMachine(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Definition => Str

The Amazon States Language definition of the state machine.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role of the state machine.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStateMachine in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

