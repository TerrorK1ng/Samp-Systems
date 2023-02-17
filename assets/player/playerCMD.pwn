#include <colors>
#include <desceQuebraInfo>

CMD:car(playerid) {
    new Float:pos[3];
    GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
    CreateVehicle(522, pos[0], pos[1], pos[2], 0, 1, 1, 0);
    return 1; 
}
CMD:estrelas(playerid, params[]) {
    new wantedLevel;
    if(sscanf(params, "i", wantedLevel)) return SendClientMessage(playerid, Red, "Erro Digite /estrelas [QUANTIDADE]"); {
        if(wantedLevel == 0 || wantedLevel > 99) return SendClientMessage(playerid, Red, "Erro Digite um valor entre 0 e 99"); {
            SetPlayerWantedLevel(playerid, wantedLevel);
        }
    }
    return 1;
}
CMD:testar(playerid) {
    SetPlayerPos(playerid, 1243.3281,-1700.3907,14.8672);
    return 1;
}