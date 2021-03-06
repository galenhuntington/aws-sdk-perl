
package Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult;
  use Moose;
  has DirectConnectGatewayAttachments => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::DirectConnectGatewayAttachment]', traits => ['NameInRequest'], request_name => 'directConnectGatewayAttachments' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeDirectConnectGatewayAttachmentsResult

=head1 ATTRIBUTES


=head2 DirectConnectGatewayAttachments => ArrayRef[L<Paws::DirectConnect::DirectConnectGatewayAttachment>]

Information about the direct connect gateway attachments.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;