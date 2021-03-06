
package Paws::SSM::UpdateMaintenanceWindowResult;
  use Moose;
  has AllowUnassociatedTargets => (is => 'ro', isa => 'Bool');
  has Cutoff => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowResult

=head1 ATTRIBUTES


=head2 AllowUnassociatedTargets => Bool

Whether targets must be registered with the Maintenance Window before
tasks can be defined for those targets.


=head2 Cutoff => Int

The number of hours before the end of the Maintenance Window that
Systems Manager stops scheduling new tasks for execution.


=head2 Description => Str

An optional description of the update.


=head2 Duration => Int

The duration of the Maintenance Window in hours.


=head2 Enabled => Bool

Whether the Maintenance Window is enabled.


=head2 Name => Str

The name of the Maintenance Window.


=head2 Schedule => Str

The schedule of the Maintenance Window in the form of a cron or rate
expression.


=head2 WindowId => Str

The ID of the created Maintenance Window.


=head2 _request_id => Str


=cut

1;