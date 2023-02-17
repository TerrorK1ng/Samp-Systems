#include <YSI_Coding\y_hooks>
#include <colors>
#include <dialogs>
#include <desceQuebraInfo>

forward cooldownToCreateCar(playerid);
forward cooldownToCreateBike(playerid);
forward sendRandomMessages(playerid);

public cooldownToCreateCar(playerid) {
    new Float:pos[3], veh;
    new randonSpawns = random(sizeof(RandonSpawnsDesceQuebra));
    GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
    TogglePlayerControllable(playerid, 1);
    veh = CreateVehicle(560, pos[0], pos[1], pos[2], RandonSpawnsDesceQuebra[randonSpawns][3], 0, 0, 0);
    PutPlayerInVehicle(playerid, veh, 0);
}
public cooldownToCreateBike(playerid) {
    new Float:pos[3], veh;
    new randonSpawns = random(sizeof(RandonSpawnsDesceQuebra));
    GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
    TogglePlayerControllable(playerid, 1);
    veh = CreateVehicle(522, pos[0], pos[1], pos[2], RandonSpawnsDesceQuebra[randonSpawns][3], 0, 0, 0);
    PutPlayerInVehicle(playerid, veh, 0);
}

CMD:descequebra(playerid) {
    if(GetPlayerWantedLevel(playerid) > 1) return SendClientMessage(playerid, Red, "Voce tem mais de 1 estrela de procurado, se entregue para a policia e tente novamente"); {
        ShowPlayerDialog(playerid, 2, DIALOG_STYLE_LIST,"Selecione seu veiculo para o MiniGame", "1 Carro Sultan\n2 Moto NRG 500", "Selecionar", "Cancelar");
    }
    return 1;
}

CMD:sairminigame(playerid) {
    if(pMiniGames[playerid][inMiniGame] == false) return SendClientMessage(playerid, Red, "Voce nao esta em nenhum mini game"); {
        pMiniGames[playerid][inMiniGame] = false;
        SetPlayerPos(playerid, 1243.0890,-1692.3297,16.1972);
        SendClientMessage(playerid, Green, "Voce saiu do modo Desce e Quebra");
    }
    return 1;
}

givePlayerWeapons (playerid) {
    if(pMiniGames[playerid][inMiniGame] == true) {
        GivePlayerWeapon(playerid, 24, 1000); // Desert
        GivePlayerWeapon(playerid, 30, 1000); // Ak
        GivePlayerWeapon(playerid, 29, 1000); // MP5
        GivePlayerWeapon(playerid, 25, 1000); // Shotgun
        GivePlayerWeapon(playerid, 4, 1000); // Knife
        SetPlayerHealth(playerid, 100.0);
        SetPlayerArmour(playerid, 100.0);
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == 2) {
        if(response) {
            if(listitem == 0)  {
                pMiniGames[playerid][inMiniGame] = true;
                randomMiniGameSpawn(playerid);
                SetTimerEx("cooldownToCreateCar", 250, false, "i", playerid);
                SetTimerEx("SendRandomMessages", 250, false, "i", playerid);
                givePlayerWeapons(playerid);
            }
            else {
                pMiniGames[playerid][inMiniGame] = true;
                randomMiniGameSpawn(playerid);
                SetTimerEx("cooldownToCreateBike", 250, false, "i", playerid);
                SetTimerEx("SendRandomMessages", 250, false, "i", playerid);
                givePlayerWeapons(playerid);
            }
        }
        else {
            return 0;
        }
    }    
	return 1;
}

hook OnPlayerSpawn(playerid) {
	return 1;
}

hook OnPlayerDisconnect(playerid) {
    pMiniGames[playerid][inMiniGame] = false;
    return 1;
}

hook OnPlayerDeath(playerid, killerid, reason) {
    if(pMiniGames[playerid][inMiniGame] == true) {
        randomMiniGameSpawn(playerid);
    }
	return 1;
}