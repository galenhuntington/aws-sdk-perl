package Paws::S3;
  warn "Paws::S3 is not stable / supported / entirely developed";
  use Moose;
  sub service { 's3' }
  sub signing_name { 's3' }
  sub version { '2006-03-01' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'BadDigest' },
       sub { defined $_[0]->http_status and $_[0]->http_status == 400 and $_[0]->code eq 'RequestTimeout' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::S3Signature', 'Paws::Net::RestXmlCaller';

  has '+region_rules' => (default => sub {
    my $regioninfo;
      $regioninfo = [
    {
      constraints => [
        [
          'region',
          'oneOf',
          [
            'us-east-1',
            undef
          ]
        ]
      ],
      properties => {
        credentialScope => {
          region => 'us-east-1'
        }
      },
      uri => '{scheme}://s3.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'startsWith',
          'cn-'
        ]
      ],
      properties => {
        signatureVersion => 's3v4'
      },
      uri => '{scheme}://{service}.{region}.amazonaws.com.cn'
    },
    {
      constraints => [
        [
          'region',
          'oneOf',
          [
            'us-east-1',
            'ap-northeast-1',
            'sa-east-1',
            'ap-southeast-1',
            'ap-southeast-2',
            'us-west-2',
            'us-west-1',
            'eu-west-1',
            'us-gov-west-1',
            'fips-us-gov-west-1'
          ]
        ]
      ],
      uri => '{scheme}://{service}-{region}.amazonaws.com'
    },
    {
      constraints => [
        [
          'region',
          'notEquals',
          undef
        ]
      ],
      properties => {
        signatureVersion => 's3v4'
      },
      uri => '{scheme}://{service}.{region}.amazonaws.com'
    }
  ];

    return $regioninfo;
  });

  
  sub AbortMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::AbortMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CompleteMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CompleteMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CopyObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMultipartUpload {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::CreateMultipartUpload', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::DeleteObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAccelerateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAccelerateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketRequestPayment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketRequestPayment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketVersioning {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketVersioning', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetObjectTorrent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::GetObjectTorrent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub HeadBucket {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::HeadBucket', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub HeadObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::HeadObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketAnalyticsConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketAnalyticsConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketInventoryConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketInventoryConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBucketMetricsConfigurations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBucketMetricsConfigurations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBuckets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListBuckets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMultipartUploads {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListMultipartUploads', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjects {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjects', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectsV2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjectsV2', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListObjectVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListObjectVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListParts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::ListParts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAccelerateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAccelerateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketAnalyticsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketAnalyticsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketCors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketCors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketEncryption {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketEncryption', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketInventoryConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketInventoryConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLifecycleConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLifecycleConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketLogging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketLogging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketMetricsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketMetricsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketNotification {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketNotification', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketNotificationConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketNotificationConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketReplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketReplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketRequestPayment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketRequestPayment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketVersioning {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketVersioning', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutBucketWebsite {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutBucketWebsite', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutObjectTagging {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::PutObjectTagging', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreObject {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::RestoreObject', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SelectObjectContent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::SelectObjectContent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadPart {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::UploadPart', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadPartCopy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::S3::UploadPartCopy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllMultipartUploads {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMultipartUploads(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListMultipartUploads(@_, KeyMarker => $next_result->NextKeyMarker, UploadIdMarker => $next_result->NextUploadIdMarker);
        push @{ $result->Uploads }, @{ $next_result->Uploads };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Uploads') foreach (@{ $result->Uploads });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListMultipartUploads(@_, KeyMarker => $result->NextKeyMarker, UploadIdMarker => $result->NextUploadIdMarker);
      }
      $callback->($_ => 'Uploads') foreach (@{ $result->Uploads });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjects {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjects(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjects(@_, Marker => $result->NextMarker || ( (defined $result->Contents->[-1]) ? $result->Contents->[-1]->Key : undef ));
        push @{ $result->Contents }, @{ $next_result->Contents };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Contents') foreach (@{ $result->Contents });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjects(@_, Marker => $result->NextMarker || ( (defined $result->Contents->[-1]) ? $result->Contents->[-1]->Key : undef ));
      }
      $callback->($_ => 'Contents') foreach (@{ $result->Contents });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjectsV2 {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectsV2(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjectsV2(@_, ContinuationToken => $next_result->NextContinuationToken);
        push @{ $result->Contents }, @{ $next_result->Contents };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Contents') foreach (@{ $result->Contents });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjectsV2(@_, ContinuationToken => $result->NextContinuationToken);
      }
      $callback->($_ => 'Contents') foreach (@{ $result->Contents });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllObjectVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListObjectVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListObjectVersions(@_, KeyMarker => $next_result->NextKeyMarker, VersionIdMarker => $next_result->NextVersionIdMarker);
        push @{ $result->Versions }, @{ $next_result->Versions };
        push @{ $result->DeleteMarkers }, @{ $next_result->DeleteMarkers };
        push @{ $result->CommonPrefixes }, @{ $next_result->CommonPrefixes };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Versions') foreach (@{ $result->Versions });
        $callback->($_ => 'DeleteMarkers') foreach (@{ $result->DeleteMarkers });
        $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
        $result = $self->ListObjectVersions(@_, KeyMarker => $result->NextKeyMarker, VersionIdMarker => $result->NextVersionIdMarker);
      }
      $callback->($_ => 'Versions') foreach (@{ $result->Versions });
      $callback->($_ => 'DeleteMarkers') foreach (@{ $result->DeleteMarkers });
      $callback->($_ => 'CommonPrefixes') foreach (@{ $result->CommonPrefixes });
    }

    return undef
  }
  sub ListAllParts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListParts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->IsTruncated) {
        $next_result = $self->ListParts(@_, PartNumberMarker => $next_result->NextPartNumberMarker);
        push @{ $result->Parts }, @{ $next_result->Parts };
      }
      return $result;
    } else {
      while ($result->IsTruncated) {
        $callback->($_ => 'Parts') foreach (@{ $result->Parts });
        $result = $self->ListParts(@_, PartNumberMarker => $result->NextPartNumberMarker);
      }
      $callback->($_ => 'Parts') foreach (@{ $result->Parts });
    }

    return undef
  }


  sub operations { qw/AbortMultipartUpload CompleteMultipartUpload CopyObject CreateBucket CreateMultipartUpload DeleteBucket DeleteBucketAnalyticsConfiguration DeleteBucketCors DeleteBucketEncryption DeleteBucketInventoryConfiguration DeleteBucketLifecycle DeleteBucketMetricsConfiguration DeleteBucketPolicy DeleteBucketReplication DeleteBucketTagging DeleteBucketWebsite DeleteObject DeleteObjects DeleteObjectTagging GetBucketAccelerateConfiguration GetBucketAcl GetBucketAnalyticsConfiguration GetBucketCors GetBucketEncryption GetBucketInventoryConfiguration GetBucketLifecycle GetBucketLifecycleConfiguration GetBucketLocation GetBucketLogging GetBucketMetricsConfiguration GetBucketNotification GetBucketNotificationConfiguration GetBucketPolicy GetBucketReplication GetBucketRequestPayment GetBucketTagging GetBucketVersioning GetBucketWebsite GetObject GetObjectAcl GetObjectTagging GetObjectTorrent HeadBucket HeadObject ListBucketAnalyticsConfigurations ListBucketInventoryConfigurations ListBucketMetricsConfigurations ListBuckets ListMultipartUploads ListObjects ListObjectsV2 ListObjectVersions ListParts PutBucketAccelerateConfiguration PutBucketAcl PutBucketAnalyticsConfiguration PutBucketCors PutBucketEncryption PutBucketInventoryConfiguration PutBucketLifecycle PutBucketLifecycleConfiguration PutBucketLogging PutBucketMetricsConfiguration PutBucketNotification PutBucketNotificationConfiguration PutBucketPolicy PutBucketReplication PutBucketRequestPayment PutBucketTagging PutBucketVersioning PutBucketWebsite PutObject PutObjectAcl PutObjectTagging RestoreObject SelectObjectContent UploadPart UploadPartCopy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3 - Perl Interface to AWS Amazon Simple Storage Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('S3');
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

Amazon Simple Storage Service

Amazon Simple Storage Service is storage for the Internet. It is
designed to make web-scale computing easier for developers.

Amazon S3 has a simple web services interface that you can use to store
and retrieve any amount of data, at any time, from anywhere on the web.
It gives any developer access to the same highly scalable, reliable,
fast, inexpensive data storage infrastructure that Amazon uses to run
its own global network of web sites. The service aims to maximize
benefits of scale and to pass those benefits on to developers.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-2006-03-01>


=head1 METHODS

=head2 AbortMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::AbortMultipartUpload>

Returns: a L<Paws::S3::AbortMultipartUploadOutput> instance

Aborts a multipart upload.

To verify that all parts have been removed, so you don't get charged
for the part storage, you should call the List Parts operation and
ensure the parts list is empty.


=head2 CompleteMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [MultipartUpload => L<Paws::S3::CompletedMultipartUpload>]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::CompleteMultipartUpload>

Returns: a L<Paws::S3::CompleteMultipartUploadOutput> instance

Completes a multipart upload by assembling previously uploaded parts.


=head2 CopyObject

=over

=item Bucket => Str

=item CopySource => Str

=item Key => Str

=item [ACL => Str]

=item [CacheControl => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentType => Str]

=item [CopySourceIfMatch => Str]

=item [CopySourceIfModifiedSince => Str]

=item [CopySourceIfNoneMatch => Str]

=item [CopySourceIfUnmodifiedSince => Str]

=item [CopySourceSSECustomerAlgorithm => Str]

=item [CopySourceSSECustomerKey => Str]

=item [CopySourceSSECustomerKeyMD5 => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => L<Paws::S3::Metadata>]

=item [MetadataDirective => Str]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [TaggingDirective => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::CopyObject>

Returns: a L<Paws::S3::CopyObjectOutput> instance

Creates a copy of an object that is already stored in Amazon S3.


=head2 CreateBucket

=over

=item Bucket => Str

=item [ACL => Str]

=item [CreateBucketConfiguration => L<Paws::S3::CreateBucketConfiguration>]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]


=back

Each argument is described in detail in: L<Paws::S3::CreateBucket>

Returns: a L<Paws::S3::CreateBucketOutput> instance

Creates a new bucket.


=head2 CreateMultipartUpload

=over

=item Bucket => Str

=item Key => Str

=item [ACL => Str]

=item [CacheControl => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentType => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => L<Paws::S3::Metadata>]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::CreateMultipartUpload>

Returns: a L<Paws::S3::CreateMultipartUploadOutput> instance

Initiates a multipart upload and returns an upload ID.

B<Note:> After you initiate multipart upload and upload one or more
parts, you must either complete or abort multipart upload in order to
stop getting charged for storage of the uploaded parts. Only after you
either complete or abort multipart upload, Amazon S3 frees up the parts
storage and stops charging you for the parts storage.


=head2 DeleteBucket

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucket>

Returns: nothing

Deletes the bucket. All objects (including all object versions and
Delete Markers) in the bucket must be deleted before the bucket itself
can be deleted.


=head2 DeleteBucketAnalyticsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketAnalyticsConfiguration>

Returns: nothing

Deletes an analytics configuration for the bucket (specified by the
analytics configuration ID).


=head2 DeleteBucketCors

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketCors>

Returns: nothing

Deletes the cors configuration information set for the bucket.


=head2 DeleteBucketEncryption

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketEncryption>

Returns: nothing

Deletes the server-side encryption configuration from the bucket.


=head2 DeleteBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketInventoryConfiguration>

Returns: nothing

Deletes an inventory configuration (identified by the inventory ID)
from the bucket.


=head2 DeleteBucketLifecycle

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketLifecycle>

Returns: nothing

Deletes the lifecycle configuration from the bucket.


=head2 DeleteBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketMetricsConfiguration>

Returns: nothing

Deletes a metrics configuration (specified by the metrics configuration
ID) from the bucket.


=head2 DeleteBucketPolicy

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketPolicy>

Returns: nothing

Deletes the policy from the bucket.


=head2 DeleteBucketReplication

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketReplication>

Returns: nothing

Deletes the replication configuration from the bucket.


=head2 DeleteBucketTagging

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketTagging>

Returns: nothing

Deletes the tags from the bucket.


=head2 DeleteBucketWebsite

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::DeleteBucketWebsite>

Returns: nothing

This operation removes the website configuration from the bucket.


=head2 DeleteObject

=over

=item Bucket => Str

=item Key => Str

=item [MFA => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObject>

Returns: a L<Paws::S3::DeleteObjectOutput> instance

Removes the null version (if there is one) of an object and inserts a
delete marker, which becomes the latest version of the object. If there
isn't a null version, Amazon S3 does not remove any objects.


=head2 DeleteObjects

=over

=item Bucket => Str

=item Delete => L<Paws::S3::Delete>

=item [MFA => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObjects>

Returns: a L<Paws::S3::DeleteObjectsOutput> instance

This operation enables you to delete multiple objects from a bucket
using a single HTTP request. You may specify up to 1000 keys.


=head2 DeleteObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::DeleteObjectTagging>

Returns: a L<Paws::S3::DeleteObjectTaggingOutput> instance

Removes the tag-set from an existing object.


=head2 GetBucketAccelerateConfiguration

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAccelerateConfiguration>

Returns: a L<Paws::S3::GetBucketAccelerateConfigurationOutput> instance

Returns the accelerate configuration of a bucket.


=head2 GetBucketAcl

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAcl>

Returns: a L<Paws::S3::GetBucketAclOutput> instance

Gets the access control policy for the bucket.


=head2 GetBucketAnalyticsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketAnalyticsConfiguration>

Returns: a L<Paws::S3::GetBucketAnalyticsConfigurationOutput> instance

Gets an analytics configuration for the bucket (specified by the
analytics configuration ID).


=head2 GetBucketCors

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketCors>

Returns: a L<Paws::S3::GetBucketCorsOutput> instance

Returns the cors configuration for the bucket.


=head2 GetBucketEncryption

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketEncryption>

Returns: a L<Paws::S3::GetBucketEncryptionOutput> instance

Returns the server-side encryption configuration of a bucket.


=head2 GetBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketInventoryConfiguration>

Returns: a L<Paws::S3::GetBucketInventoryConfigurationOutput> instance

Returns an inventory configuration (identified by the inventory ID)
from the bucket.


=head2 GetBucketLifecycle

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLifecycle>

Returns: a L<Paws::S3::GetBucketLifecycleOutput> instance

Deprecated, see the GetBucketLifecycleConfiguration operation.


=head2 GetBucketLifecycleConfiguration

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLifecycleConfiguration>

Returns: a L<Paws::S3::GetBucketLifecycleConfigurationOutput> instance

Returns the lifecycle configuration information set on the bucket.


=head2 GetBucketLocation

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLocation>

Returns: a L<Paws::S3::GetBucketLocationOutput> instance

Returns the region the bucket resides in.


=head2 GetBucketLogging

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketLogging>

Returns: a L<Paws::S3::GetBucketLoggingOutput> instance

Returns the logging status of a bucket and the permissions users have
to view and modify that status. To use GET, you must be the bucket
owner.


=head2 GetBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketMetricsConfiguration>

Returns: a L<Paws::S3::GetBucketMetricsConfigurationOutput> instance

Gets a metrics configuration (specified by the metrics configuration
ID) from the bucket.


=head2 GetBucketNotification

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketNotification>

Returns: a L<Paws::S3::NotificationConfigurationDeprecated> instance

Deprecated, see the GetBucketNotificationConfiguration operation.


=head2 GetBucketNotificationConfiguration

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketNotificationConfiguration>

Returns: a L<Paws::S3::NotificationConfiguration> instance

Returns the notification configuration of a bucket.


=head2 GetBucketPolicy

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketPolicy>

Returns: a L<Paws::S3::GetBucketPolicyOutput> instance

Returns the policy of a specified bucket.


=head2 GetBucketReplication

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketReplication>

Returns: a L<Paws::S3::GetBucketReplicationOutput> instance

Returns the replication configuration of a bucket.


=head2 GetBucketRequestPayment

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketRequestPayment>

Returns: a L<Paws::S3::GetBucketRequestPaymentOutput> instance

Returns the request payment configuration of a bucket.


=head2 GetBucketTagging

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketTagging>

Returns: a L<Paws::S3::GetBucketTaggingOutput> instance

Returns the tag set associated with the bucket.


=head2 GetBucketVersioning

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketVersioning>

Returns: a L<Paws::S3::GetBucketVersioningOutput> instance

Returns the versioning state of a bucket.


=head2 GetBucketWebsite

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::GetBucketWebsite>

Returns: a L<Paws::S3::GetBucketWebsiteOutput> instance

Returns the website configuration for a bucket.


=head2 GetObject

=over

=item Bucket => Str

=item Key => Str

=item [IfMatch => Str]

=item [IfModifiedSince => Str]

=item [IfNoneMatch => Str]

=item [IfUnmodifiedSince => Str]

=item [PartNumber => Int]

=item [Range => Str]

=item [RequestPayer => Str]

=item [ResponseCacheControl => Str]

=item [ResponseContentDisposition => Str]

=item [ResponseContentEncoding => Str]

=item [ResponseContentLanguage => Str]

=item [ResponseContentType => Str]

=item [ResponseExpires => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObject>

Returns: a L<Paws::S3::GetObjectOutput> instance

Retrieves objects from Amazon S3.


=head2 GetObjectAcl

=over

=item Bucket => Str

=item Key => Str

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectAcl>

Returns: a L<Paws::S3::GetObjectAclOutput> instance

Returns the access control list (ACL) of an object.


=head2 GetObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectTagging>

Returns: a L<Paws::S3::GetObjectTaggingOutput> instance

Returns the tag-set of an object.


=head2 GetObjectTorrent

=over

=item Bucket => Str

=item Key => Str

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::GetObjectTorrent>

Returns: a L<Paws::S3::GetObjectTorrentOutput> instance

Return torrent files from a bucket.


=head2 HeadBucket

=over

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::HeadBucket>

Returns: nothing

This operation is useful to determine if a bucket exists and you have
permission to access it.


=head2 HeadObject

=over

=item Bucket => Str

=item Key => Str

=item [IfMatch => Str]

=item [IfModifiedSince => Str]

=item [IfNoneMatch => Str]

=item [IfUnmodifiedSince => Str]

=item [PartNumber => Int]

=item [Range => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::HeadObject>

Returns: a L<Paws::S3::HeadObjectOutput> instance

The HEAD operation retrieves metadata from an object without returning
the object itself. This operation is useful if you're only interested
in an object's metadata. To use HEAD, you must have READ access to the
object.


=head2 ListBucketAnalyticsConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketAnalyticsConfigurations>

Returns: a L<Paws::S3::ListBucketAnalyticsConfigurationsOutput> instance

Lists the analytics configurations for the bucket.


=head2 ListBucketInventoryConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketInventoryConfigurations>

Returns: a L<Paws::S3::ListBucketInventoryConfigurationsOutput> instance

Returns a list of inventory configurations for the bucket.


=head2 ListBucketMetricsConfigurations

=over

=item Bucket => Str

=item [ContinuationToken => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListBucketMetricsConfigurations>

Returns: a L<Paws::S3::ListBucketMetricsConfigurationsOutput> instance

Lists the metrics configurations for the bucket.


=head2 ListBuckets

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::S3::ListBuckets>

Returns: a L<Paws::S3::ListBucketsOutput> instance

Returns a list of all buckets owned by the authenticated sender of the
request.


=head2 ListMultipartUploads

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [KeyMarker => Str]

=item [MaxUploads => Int]

=item [Prefix => Str]

=item [UploadIdMarker => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListMultipartUploads>

Returns: a L<Paws::S3::ListMultipartUploadsOutput> instance

This operation lists in-progress multipart uploads.


=head2 ListObjects

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [Marker => Str]

=item [MaxKeys => Int]

=item [Prefix => Str]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjects>

Returns: a L<Paws::S3::ListObjectsOutput> instance

Returns some or all (up to 1000) of the objects in a bucket. You can
use the request parameters as selection criteria to return a subset of
the objects in a bucket.


=head2 ListObjectsV2

=over

=item Bucket => Str

=item [ContinuationToken => Str]

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [FetchOwner => Bool]

=item [MaxKeys => Int]

=item [Prefix => Str]

=item [RequestPayer => Str]

=item [StartAfter => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjectsV2>

Returns: a L<Paws::S3::ListObjectsV2Output> instance

Returns some or all (up to 1000) of the objects in a bucket. You can
use the request parameters as selection criteria to return a subset of
the objects in a bucket. Note: ListObjectsV2 is the revised List
Objects API and we recommend you use this revised API for new
application development.


=head2 ListObjectVersions

=over

=item Bucket => Str

=item [Delimiter => Str]

=item [EncodingType => Str]

=item [KeyMarker => Str]

=item [MaxKeys => Int]

=item [Prefix => Str]

=item [VersionIdMarker => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListObjectVersions>

Returns: a L<Paws::S3::ListObjectVersionsOutput> instance

Returns metadata about all of the versions of objects in a bucket.


=head2 ListParts

=over

=item Bucket => Str

=item Key => Str

=item UploadId => Str

=item [MaxParts => Int]

=item [PartNumberMarker => Int]

=item [RequestPayer => Str]


=back

Each argument is described in detail in: L<Paws::S3::ListParts>

Returns: a L<Paws::S3::ListPartsOutput> instance

Lists the parts that have been uploaded for a specific multipart
upload.


=head2 PutBucketAccelerateConfiguration

=over

=item AccelerateConfiguration => L<Paws::S3::AccelerateConfiguration>

=item Bucket => Str


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAccelerateConfiguration>

Returns: nothing

Sets the accelerate configuration of an existing bucket.


=head2 PutBucketAcl

=over

=item Bucket => Str

=item [AccessControlPolicy => L<Paws::S3::AccessControlPolicy>]

=item [ACL => Str]

=item [ContentMD5 => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAcl>

Returns: nothing

Sets the permissions on a bucket using access control lists (ACL).


=head2 PutBucketAnalyticsConfiguration

=over

=item AnalyticsConfiguration => L<Paws::S3::AnalyticsConfiguration>

=item Bucket => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::S3::PutBucketAnalyticsConfiguration>

Returns: nothing

Sets an analytics configuration for the bucket (specified by the
analytics configuration ID).


=head2 PutBucketCors

=over

=item Bucket => Str

=item CORSConfiguration => L<Paws::S3::CORSConfiguration>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketCors>

Returns: nothing

Sets the cors configuration for a bucket.


=head2 PutBucketEncryption

=over

=item Bucket => Str

=item ServerSideEncryptionConfiguration => L<Paws::S3::ServerSideEncryptionConfiguration>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketEncryption>

Returns: nothing

Creates a new server-side encryption configuration (or replaces an
existing one, if present).


=head2 PutBucketInventoryConfiguration

=over

=item Bucket => Str

=item Id => Str

=item InventoryConfiguration => L<Paws::S3::InventoryConfiguration>


=back

Each argument is described in detail in: L<Paws::S3::PutBucketInventoryConfiguration>

Returns: nothing

Adds an inventory configuration (identified by the inventory ID) from
the bucket.


=head2 PutBucketLifecycle

=over

=item Bucket => Str

=item [ContentMD5 => Str]

=item [LifecycleConfiguration => L<Paws::S3::LifecycleConfiguration>]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLifecycle>

Returns: nothing

Deprecated, see the PutBucketLifecycleConfiguration operation.


=head2 PutBucketLifecycleConfiguration

=over

=item Bucket => Str

=item [LifecycleConfiguration => L<Paws::S3::BucketLifecycleConfiguration>]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLifecycleConfiguration>

Returns: nothing

Sets lifecycle configuration for your bucket. If a lifecycle
configuration exists, it replaces it.


=head2 PutBucketLogging

=over

=item Bucket => Str

=item BucketLoggingStatus => L<Paws::S3::BucketLoggingStatus>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketLogging>

Returns: nothing

Set the logging parameters for a bucket and to specify permissions for
who can view and modify the logging parameters. To set the logging
status of a bucket, you must be the bucket owner.


=head2 PutBucketMetricsConfiguration

=over

=item Bucket => Str

=item Id => Str

=item MetricsConfiguration => L<Paws::S3::MetricsConfiguration>


=back

Each argument is described in detail in: L<Paws::S3::PutBucketMetricsConfiguration>

Returns: nothing

Sets a metrics configuration (specified by the metrics configuration
ID) for the bucket.


=head2 PutBucketNotification

=over

=item Bucket => Str

=item NotificationConfiguration => L<Paws::S3::NotificationConfigurationDeprecated>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketNotification>

Returns: nothing

Deprecated, see the PutBucketNotificationConfiguraiton operation.


=head2 PutBucketNotificationConfiguration

=over

=item Bucket => Str

=item NotificationConfiguration => L<Paws::S3::NotificationConfiguration>


=back

Each argument is described in detail in: L<Paws::S3::PutBucketNotificationConfiguration>

Returns: nothing

Enables notifications of specified events for a bucket.


=head2 PutBucketPolicy

=over

=item Bucket => Str

=item Policy => Str

=item [ConfirmRemoveSelfBucketAccess => Bool]

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketPolicy>

Returns: nothing

Replaces a policy on a bucket. If the bucket already has a policy, the
one in this request completely replaces it.


=head2 PutBucketReplication

=over

=item Bucket => Str

=item ReplicationConfiguration => L<Paws::S3::ReplicationConfiguration>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketReplication>

Returns: nothing

Creates a new replication configuration (or replaces an existing one,
if present).


=head2 PutBucketRequestPayment

=over

=item Bucket => Str

=item RequestPaymentConfiguration => L<Paws::S3::RequestPaymentConfiguration>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketRequestPayment>

Returns: nothing

Sets the request payment configuration for a bucket. By default, the
bucket owner pays for downloads from the bucket. This configuration
parameter enables the bucket owner (only) to specify that the person
requesting the download will be charged for the download. Documentation
on requester pays buckets can be found at
http://docs.aws.amazon.com/AmazonS3/latest/dev/RequesterPaysBuckets.html


=head2 PutBucketTagging

=over

=item Bucket => Str

=item Tagging => L<Paws::S3::Tagging>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketTagging>

Returns: nothing

Sets the tags for a bucket.


=head2 PutBucketVersioning

=over

=item Bucket => Str

=item VersioningConfiguration => L<Paws::S3::VersioningConfiguration>

=item [ContentMD5 => Str]

=item [MFA => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketVersioning>

Returns: nothing

Sets the versioning state of an existing bucket. To set the versioning
state, you must be the bucket owner.


=head2 PutBucketWebsite

=over

=item Bucket => Str

=item WebsiteConfiguration => L<Paws::S3::WebsiteConfiguration>

=item [ContentMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutBucketWebsite>

Returns: nothing

Set the website configuration for a bucket.


=head2 PutObject

=over

=item Bucket => Str

=item Key => Str

=item [ACL => Str]

=item [Body => Str]

=item [CacheControl => Str]

=item [ContentDisposition => Str]

=item [ContentEncoding => Str]

=item [ContentLanguage => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [ContentType => Str]

=item [Expires => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWriteACP => Str]

=item [Metadata => L<Paws::S3::Metadata>]

=item [RequestPayer => Str]

=item [ServerSideEncryption => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]

=item [SSEKMSKeyId => Str]

=item [StorageClass => Str]

=item [Tagging => Str]

=item [WebsiteRedirectLocation => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObject>

Returns: a L<Paws::S3::PutObjectOutput> instance

Adds an object to a bucket.


=head2 PutObjectAcl

=over

=item Bucket => Str

=item Key => Str

=item [AccessControlPolicy => L<Paws::S3::AccessControlPolicy>]

=item [ACL => Str]

=item [ContentMD5 => Str]

=item [GrantFullControl => Str]

=item [GrantRead => Str]

=item [GrantReadACP => Str]

=item [GrantWrite => Str]

=item [GrantWriteACP => Str]

=item [RequestPayer => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectAcl>

Returns: a L<Paws::S3::PutObjectAclOutput> instance

uses the acl subresource to set the access control list (ACL)
permissions for an object that already exists in a bucket


=head2 PutObjectTagging

=over

=item Bucket => Str

=item Key => Str

=item Tagging => L<Paws::S3::Tagging>

=item [ContentMD5 => Str]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::PutObjectTagging>

Returns: a L<Paws::S3::PutObjectTaggingOutput> instance

Sets the supplied tag-set to an object that already exists in a bucket


=head2 RestoreObject

=over

=item Bucket => Str

=item Key => Str

=item [RequestPayer => Str]

=item [RestoreRequest => L<Paws::S3::RestoreRequest>]

=item [VersionId => Str]


=back

Each argument is described in detail in: L<Paws::S3::RestoreObject>

Returns: a L<Paws::S3::RestoreObjectOutput> instance

Restores an archived copy of an object back into Amazon S3


=head2 SelectObjectContent

=over

=item Bucket => Str

=item Expression => Str

=item ExpressionType => Str

=item InputSerialization => L<Paws::S3::InputSerialization>

=item Key => Str

=item OutputSerialization => L<Paws::S3::OutputSerialization>

=item [RequestProgress => L<Paws::S3::RequestProgress>]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::SelectObjectContent>

Returns: a L<Paws::S3::SelectObjectContentOutput> instance

This operation filters the contents of an Amazon S3 object based on a
simple Structured Query Language (SQL) statement. In the request, along
with the SQL expression, you must also specify a data serialization
format (JSON or CSV) of the object. Amazon S3 uses this to parse object
data into records, and returns only records that match the specified
SQL expression. You must also specify the data serialization format for
the response.


=head2 UploadPart

=over

=item Bucket => Str

=item Key => Str

=item PartNumber => Int

=item UploadId => Str

=item [Body => Str]

=item [ContentLength => Int]

=item [ContentMD5 => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::UploadPart>

Returns: a L<Paws::S3::UploadPartOutput> instance

Uploads a part in a multipart upload.

B<Note:> After you initiate multipart upload and upload one or more
parts, you must either complete or abort multipart upload in order to
stop getting charged for storage of the uploaded parts. Only after you
either complete or abort multipart upload, Amazon S3 frees up the parts
storage and stops charging you for the parts storage.


=head2 UploadPartCopy

=over

=item Bucket => Str

=item CopySource => Str

=item Key => Str

=item PartNumber => Int

=item UploadId => Str

=item [CopySourceIfMatch => Str]

=item [CopySourceIfModifiedSince => Str]

=item [CopySourceIfNoneMatch => Str]

=item [CopySourceIfUnmodifiedSince => Str]

=item [CopySourceRange => Str]

=item [CopySourceSSECustomerAlgorithm => Str]

=item [CopySourceSSECustomerKey => Str]

=item [CopySourceSSECustomerKeyMD5 => Str]

=item [RequestPayer => Str]

=item [SSECustomerAlgorithm => Str]

=item [SSECustomerKey => Str]

=item [SSECustomerKeyMD5 => Str]


=back

Each argument is described in detail in: L<Paws::S3::UploadPartCopy>

Returns: a L<Paws::S3::UploadPartCopyOutput> instance

Uploads a part by copying data from an existing object as data source.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllMultipartUploads(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxUploads => Int, Prefix => Str, UploadIdMarker => Str])

=head2 ListAllMultipartUploads(Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxUploads => Int, Prefix => Str, UploadIdMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Uploads, passing the object as the first parameter, and the string 'Uploads' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListMultipartUploadsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjects(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, Marker => Str, MaxKeys => Int, Prefix => Str, RequestPayer => Str])

=head2 ListAllObjects(Bucket => Str, [Delimiter => Str, EncodingType => Str, Marker => Str, MaxKeys => Int, Prefix => Str, RequestPayer => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contents, passing the object as the first parameter, and the string 'Contents' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectsOutput> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectsV2(sub { },Bucket => Str, [ContinuationToken => Str, Delimiter => Str, EncodingType => Str, FetchOwner => Bool, MaxKeys => Int, Prefix => Str, RequestPayer => Str, StartAfter => Str])

=head2 ListAllObjectsV2(Bucket => Str, [ContinuationToken => Str, Delimiter => Str, EncodingType => Str, FetchOwner => Bool, MaxKeys => Int, Prefix => Str, RequestPayer => Str, StartAfter => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Contents, passing the object as the first parameter, and the string 'Contents' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectsV2Output> instance with all the C<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllObjectVersions(sub { },Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxKeys => Int, Prefix => Str, VersionIdMarker => Str])

=head2 ListAllObjectVersions(Bucket => Str, [Delimiter => Str, EncodingType => Str, KeyMarker => Str, MaxKeys => Int, Prefix => Str, VersionIdMarker => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Versions, passing the object as the first parameter, and the string 'Versions' as the second parameter 

 - DeleteMarkers, passing the object as the first parameter, and the string 'DeleteMarkers' as the second parameter 

 - CommonPrefixes, passing the object as the first parameter, and the string 'CommonPrefixes' as the second parameter 

If not, it will return a a L<Paws::S3::ListObjectVersionsOutput> instance with all the C<param>s; andC<param>s; andC<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllParts(sub { },Bucket => Str, Key => Str, UploadId => Str, [MaxParts => Int, PartNumberMarker => Int, RequestPayer => Str])

=head2 ListAllParts(Bucket => Str, Key => Str, UploadId => Str, [MaxParts => Int, PartNumberMarker => Int, RequestPayer => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parts, passing the object as the first parameter, and the string 'Parts' as the second parameter 

If not, it will return a a L<Paws::S3::ListPartsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

