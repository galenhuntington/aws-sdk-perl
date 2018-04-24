
package Paws::ResourceGroups::GetGroupQuery;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/groups/{GroupName}/query');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceGroups::GetGroupQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroupQuery - Arguments for method GetGroupQuery on L<Paws::ResourceGroups>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupQuery on the 
L<AWS Resource Groups|Paws::ResourceGroups> service. Use the attributes of this class
as arguments to method GetGroupQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupQuery.

As an example:

  $service_obj->GetGroupQuery(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name of the resource group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupQuery in L<Paws::ResourceGroups>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

