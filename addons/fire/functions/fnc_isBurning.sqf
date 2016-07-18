/*
 * Author: commy2
 * Check if object is burning.
 *
 * Arguments:
 * 0: Vehicle <Object>
 *
 * Return Value:
 * None
 *
 * Example:
 * player call ace_fire_fnc_isBurning
 *
 * Public: Yes
 */
#include "script_component.hpp"

params [["_unit", objNull, [objNull]]];

_unit getVariable [QGVAR(isBurning), false] || {
	GVAR(burningPlants) = GVAR(burningPlants) select {!isNull _x};
	_unit in GVAR(burningPlants)
}
