#include <YSI_Coding\y_hooks>
#include <colors>
#include <dialogs>

hook OnPlayerRequestClass(playerid, classid) {
	SetPlayerPos(playerid, 1243.0890,-1692.3297,SetActorFacingAngle(playerid, 16.1968));
	return 1;
}

hook OnPlayerConnect(playerid) {

	return 1;
}

hook OnPlayerDisconnect(playerid, reason) {

	return 1;
}

hook OnPlayerSpawn(playerid) {

	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason) {

	return 1;
}

hook OnVehicleSpawn(vehicleid) {

	return 1;
}

hook OnVehicleDeath(vehicleid, killerid) {

	return 1;
}

hook OnPlayerText(playerid, text[]) {

	return 1;
}

hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) {

	return 1;
}

hook OnPlayerExitVehicle(playerid, vehicleid) {

	return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate) {
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid) {

	return 1;
}

hook OnPlayerLeaveCheckpoint(playerid) {

	return 1;
}

hook OnPlayerRequestSpawn(playerid) {

	return 1;
}

hook OnPlayerPickUpPickup(playerid, pickupid) {

	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
    
	return 1;
}

hook OnPlayerUpdate(playerid) {

	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    
	return 1;
}

hook OnPlayerClickPlayer(playerid, clickedplayerid, source) {

	return 1;
}