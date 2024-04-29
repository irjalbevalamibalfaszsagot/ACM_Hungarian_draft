#include "..\script_component.hpp"
/*
 * Author: Blue
 * Return if AED shouldn't be playing any alarms/beeps (recent shock/giving advice/alarms turned off)
 *
 * Arguments:
 * 0: Patient <OBJECT>
 *
 * Return Value:
 * Is Silent <BOOL>
 *
 * Example:
 * [player] call ACM_circulation_fnc_AED_IsSilent;
 *
 * Public: No
 */

params ["_patient"];

((_patient getVariable [QGVAR(AED_LastShock), -45]) + 45 > CBA_missionTime) || (_patient getVariable [QGVAR(AED_SilentMode), false]) || (_patient getVariable [QGVAR(AED_MuteAlarm), false]);