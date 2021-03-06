
package Paws::GameLift::DescribeMatchmakingConfigurations;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');
  has RuleSetName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMatchmakingConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeMatchmakingConfigurationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeMatchmakingConfigurations - Arguments for method DescribeMatchmakingConfigurations on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMatchmakingConfigurations on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeMatchmakingConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMatchmakingConfigurations.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeMatchmakingConfigurationsOutput =
      $gamelift->DescribeMatchmakingConfigurations(
      Limit => 1,    # OPTIONAL
      Names => [
        'MyMatchmakingIdStringModel', ...    # min: 1, max: 128
      ],                                     # OPTIONAL
      NextToken   => 'MyNonZeroAndMaxString',         # OPTIONAL
      RuleSetName => 'MyMatchmakingIdStringModel',    # OPTIONAL
      );

    # Results:
    my $Configurations =
      $DescribeMatchmakingConfigurationsOutput->Configurations;
    my $NextToken = $DescribeMatchmakingConfigurationsOutput->NextToken;

  # Returns a L<Paws::GameLift::DescribeMatchmakingConfigurationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeMatchmakingConfigurations>

=head1 ATTRIBUTES


=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages. This
parameter is limited to 10.



=head2 Names => ArrayRef[Str|Undef]

Unique identifier for a matchmaking configuration(s) to retrieve. To
request all existing configurations, leave this parameter empty.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.



=head2 RuleSetName => Str

Unique identifier for a matchmaking rule set. Use this parameter to
retrieve all matchmaking configurations that use this rule set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMatchmakingConfigurations in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

