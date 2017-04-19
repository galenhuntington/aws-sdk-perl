
package Paws::EC2::AssociateVpcCidrBlockResult;
  use Moose;
  has Ipv6CidrBlockAssociation => (is => 'ro', isa => 'Paws::EC2::VpcIpv6CidrBlockAssociation', request_name => 'ipv6CidrBlockAssociation', traits => ['NameInRequest',]);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateVpcCidrBlockResult

=head1 ATTRIBUTES


=head2 Ipv6CidrBlockAssociation => L<Paws::EC2::VpcIpv6CidrBlockAssociation>

Information about the IPv6 CIDR block association.


=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

