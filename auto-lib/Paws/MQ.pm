package Paws::MQ;
  use Moose;
  sub service { 'mq' }
  sub version { '2017-11-27' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::CreateBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::CreateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DeleteBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DeleteUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationRevision {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeConfigurationRevision', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::DescribeUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBrokers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListBrokers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListConfigurationRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::RebootBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBroker {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::UpdateBroker', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::UpdateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MQ::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateBroker CreateConfiguration CreateUser DeleteBroker DeleteUser DescribeBroker DescribeConfiguration DescribeConfigurationRevision DescribeUser ListBrokers ListConfigurationRevisions ListConfigurations ListUsers RebootBroker UpdateBroker UpdateConfiguration UpdateUser / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ - Perl Interface to AWS AmazonMQ

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MQ');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon MQ is a managed message broker service for Apache ActiveMQ that
makes it easy to set up and operate message brokers in the cloud. A
message broker allows software applications and components to
communicate using various programming languages, operating systems, and
formal messaging protocols.

=head1 METHODS

=head2 CreateBroker([AutoMinorVersionUpgrade => Bool, BrokerName => Str, Configuration => L<Paws::MQ::ConfigurationId>, CreatorRequestId => Str, DeploymentMode => Str, EngineType => Str, EngineVersion => Str, HostInstanceType => Str, MaintenanceWindowStartTime => L<Paws::MQ::WeeklyStartTime>, PubliclyAccessible => Bool, SecurityGroups => ArrayRef[Str|Undef], SubnetIds => ArrayRef[Str|Undef], Users => ArrayRef[L<Paws::MQ::User>]])

Each argument is described in detail in: L<Paws::MQ::CreateBroker>

Returns: a L<Paws::MQ::CreateBrokerResponse> instance

Creates a broker. Note: This API is asynchronous.


=head2 CreateConfiguration([EngineType => Str, EngineVersion => Str, Name => Str])

Each argument is described in detail in: L<Paws::MQ::CreateConfiguration>

Returns: a L<Paws::MQ::CreateConfigurationResponse> instance

Creates a new configuration for the specified configuration name.
Amazon MQ uses the default configuration (the engine type and version).
Note: If the configuration name already exists, Amazon MQ doesn't
create a configuration.


=head2 CreateUser(BrokerId => Str, Username => Str, [ConsoleAccess => Bool, Groups => ArrayRef[Str|Undef], Password => Str])

Each argument is described in detail in: L<Paws::MQ::CreateUser>

Returns: a L<Paws::MQ::CreateUserResponse> instance

Creates an ActiveMQ user.


=head2 DeleteBroker(BrokerId => Str)

Each argument is described in detail in: L<Paws::MQ::DeleteBroker>

Returns: a L<Paws::MQ::DeleteBrokerResponse> instance

Deletes a broker. Note: This API is asynchronous.


=head2 DeleteUser(BrokerId => Str, Username => Str)

Each argument is described in detail in: L<Paws::MQ::DeleteUser>

Returns: a L<Paws::MQ::DeleteUserResponse> instance

Deletes an ActiveMQ user.


=head2 DescribeBroker(BrokerId => Str)

Each argument is described in detail in: L<Paws::MQ::DescribeBroker>

Returns: a L<Paws::MQ::DescribeBrokerResponse> instance

Returns information about the specified broker.


=head2 DescribeConfiguration(ConfigurationId => Str)

Each argument is described in detail in: L<Paws::MQ::DescribeConfiguration>

Returns: a L<Paws::MQ::DescribeConfigurationResponse> instance

Returns information about the specified configuration.


=head2 DescribeConfigurationRevision(ConfigurationId => Str, ConfigurationRevision => Str)

Each argument is described in detail in: L<Paws::MQ::DescribeConfigurationRevision>

Returns: a L<Paws::MQ::DescribeConfigurationRevisionResponse> instance

Returns the specified configuration revision for the specified
configuration.


=head2 DescribeUser(BrokerId => Str, Username => Str)

Each argument is described in detail in: L<Paws::MQ::DescribeUser>

Returns: a L<Paws::MQ::DescribeUserResponse> instance

Returns information about an ActiveMQ user.


=head2 ListBrokers([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MQ::ListBrokers>

Returns: a L<Paws::MQ::ListBrokersResponse> instance

Returns a list of all brokers.


=head2 ListConfigurationRevisions(ConfigurationId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MQ::ListConfigurationRevisions>

Returns: a L<Paws::MQ::ListConfigurationRevisionsResponse> instance

Returns a list of all revisions for the specified configuration.


=head2 ListConfigurations([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MQ::ListConfigurations>

Returns: a L<Paws::MQ::ListConfigurationsResponse> instance

Returns a list of all configurations.


=head2 ListUsers(BrokerId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MQ::ListUsers>

Returns: a L<Paws::MQ::ListUsersResponse> instance

Returns a list of all ActiveMQ users.


=head2 RebootBroker(BrokerId => Str)

Each argument is described in detail in: L<Paws::MQ::RebootBroker>

Returns: a L<Paws::MQ::RebootBrokerResponse> instance

Reboots a broker. Note: This API is asynchronous.


=head2 UpdateBroker(BrokerId => Str, [Configuration => L<Paws::MQ::ConfigurationId>])

Each argument is described in detail in: L<Paws::MQ::UpdateBroker>

Returns: a L<Paws::MQ::UpdateBrokerResponse> instance

Adds a pending configuration change to a broker.


=head2 UpdateConfiguration(ConfigurationId => Str, [Data => Str, Description => Str])

Each argument is described in detail in: L<Paws::MQ::UpdateConfiguration>

Returns: a L<Paws::MQ::UpdateConfigurationResponse> instance

Updates the specified configuration.


=head2 UpdateUser(BrokerId => Str, Username => Str, [ConsoleAccess => Bool, Groups => ArrayRef[Str|Undef], Password => Str])

Each argument is described in detail in: L<Paws::MQ::UpdateUser>

Returns: a L<Paws::MQ::UpdateUserResponse> instance

Updates the information for an ActiveMQ user.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
