
package Paws::Config::BatchGetResourceConfig;
  use Moose;
  has ResourceKeys => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceKey]', traits => ['NameInRequest'], request_name => 'resourceKeys' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetResourceConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::BatchGetResourceConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::BatchGetResourceConfig - Arguments for method BatchGetResourceConfig on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetResourceConfig on the 
AWS Config service. Use the attributes of this class
as arguments to method BatchGetResourceConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetResourceConfig.

As an example:

  $service_obj->BatchGetResourceConfig(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceKeys => ArrayRef[L<Paws::Config::ResourceKey>]

A list of resource keys to be processed with the current request. Each
element in the list consists of the resource type and resource ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetResourceConfig in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
