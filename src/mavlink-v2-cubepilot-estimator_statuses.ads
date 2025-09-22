-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Estimator status message including flags, innovation test ratios and
--  estimated accuracies. The flags message is an integer bitmask containing
--  information on which EKF outputs are valid. See the ESTIMATOR_STATUS_FLAGS
--  enum definition for further information. The innovation test ratios show
--  the magnitude of the sensor innovation divided by the innovation check
--  threshold. Under normal operation the innovation test ratios should be
--  below 0.5 with occasional values up to 1.0. Values greater than 1.0 should
--  be rare under normal operation and indicate that a measurement has been
--  rejected by the filter. The user should be notified if an innovation test
--  ratio greater than 1.0 is recorded. Notifications for values in the range
--  between 0.5 and 1.0 should be optional and controllable by the user.

pragma Ada_2022;

with MAVLink.V2.Common.Estimator_Statuses;

package MAVLink.V2.Cubepilot.Estimator_Statuses
renames MAVLink.V2.Common.Estimator_Statuses;
