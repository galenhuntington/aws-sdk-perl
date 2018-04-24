
package Paws::IoTAnalytics::CreateChannel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelName', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', traits => ['NameInRequest'], request_name => 'retentionPeriod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateChannel - Arguments for method CreateChannel on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the 
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

As an example:

  $service_obj->CreateChannel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The name of the channel.



=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

How long, in days, message data is kept for the channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

