package Paws::WorkDocs::ResourcePath;
  use Moose;
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::ResourcePathComponent]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::ResourcePath

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkDocs::ResourcePath object:

  $service_obj->Method(Att1 => { Components => $value, ..., Components => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkDocs::ResourcePath object:

  $result = $service_obj->Method(...);
  $result->Att1->Components

=head1 DESCRIPTION

Describes the path information of a resource.

=head1 ATTRIBUTES


=head2 Components => ArrayRef[L<Paws::WorkDocs::ResourcePathComponent>]

  The components of the resource path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
