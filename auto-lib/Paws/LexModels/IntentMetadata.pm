package Paws::LexModels::IntentMetadata;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', xmlname => 'createdDate', request_name => 'createdDate', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', xmlname => 'lastUpdatedDate', request_name => 'lastUpdatedDate', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', xmlname => 'version', request_name => 'version', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::IntentMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::IntentMetadata object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::IntentMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

Provides information about an intent.

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date that the intent was created.


=head2 Description => Str

  A description of the intent.


=head2 LastUpdatedDate => Str

  The date that the intent was updated. When you create an intent, the
creation date and last updated date are the same.


=head2 Name => Str

  The name of the intent.


=head2 Version => Str

  The version of the intent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
