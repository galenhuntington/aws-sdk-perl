
package Paws::SES::VerifyDomainIdentity;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::VerifyDomainIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyDomainIdentityResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::VerifyDomainIdentity - Arguments for method VerifyDomainIdentity on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method VerifyDomainIdentity on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method VerifyDomainIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to VerifyDomainIdentity.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # VerifyDomainIdentity
    # The following example starts the domain verification process with Amazon
    # SES:
    my $VerifyDomainIdentityResponse = $email->VerifyDomainIdentity(
      {
        'Domain' => 'example.com'
      }
    );

    # Results:
    my $VerificationToken = $VerifyDomainIdentityResponse->VerificationToken;

    # Returns a L<Paws::SES::VerifyDomainIdentityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/VerifyDomainIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain to be verified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method VerifyDomainIdentity in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

