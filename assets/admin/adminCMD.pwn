CMD:kill(playerid, params[]) {
    new id, str[80];
    if(player[playerid][admin] < 2) return SendClientMessage(playerid, Red, "Voce nao e um Admin"); {
        if(sscanf(params, "d", id)) return SendClientMessage(playerid, Red, "Use /Kill [ID]"); {
            SetPlayerHealth(id, 0.0);
            format(str, 80, "Voce matou o player %s", )
            SendClientMessage(playerid, Green, "Voce matou o player %s", pName(playerid));
            return 1;
        }
    }
}