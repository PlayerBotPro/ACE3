#include "..\script_component.hpp"
/*
 * Author: commy2
 * Waits for the flashbang grenade fuze to trigger and 'explode'
 *
 * Arguments:
 * 0: projectile - Flashbang Grenade <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [theFlashbang] call ace_grenades_fnc_flashbangThrownFuze
 *
 * Public: No
 */

params ["_projectile"];
TRACE_1("params",_projectile);

if (alive _projectile) then {
    playSound3D ["A3\Sounds_F\arsenal\explosives\grenades\Explosion_HE_grenade_01.wss", _projectile, false, getPosASL _projectile, 5, 1.2, 400];

    ["ace_flashbangExploded", [getPosASL _projectile]] call CBA_fnc_globalEvent;
};
