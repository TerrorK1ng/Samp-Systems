enum miniGames {
    bool:inMiniGame
};

new Float:RandonSpawnsDesceQuebra [] [] = {
    {1431.1865,-1741.0750,13.5469,356.1946}, // Desce e quebra 1 Praca LS
    {1546.2483,-1716.7992,13.5546,315.3519}, // Desce e quebra 2 Praca LS
    {1514.3656,-1646.1047,13.7817,315.3519}, // Desce e quebra 3 Praca LS
    {1376.9069,-1639.3905,13.5395,183.4135}, // Desce e quebra 4 Praca LS
    {1685.6427,-1766.9785,13.3828,3.162700}, // Desce e quebra 5 Praca LS
    {1631.5789,-1698.2844,13.3634,175.8436}, // Desce e quebra 6 Praca LS
    {1558.9614,-1785.1467,13.2524,356.7738}, // Desce e quebra 7 Praca LS
    {1378.6766,-1570.9098,13.2741,166.4787}, // Desce e quebra 8 Beco da PracaLS
    {1290.5138,-1647.3391,13.2523,1.5692},   // Desce e quebra 9 Av Ammu LS
    {1283.7350,-1610.5332,13.2522,273.2488}, // Desce e quebra 10 Beco Av Ammu LS
    {1333.2128,-1532.8987,13.2522,260.1588}  // Desce e quebra 11 Beco Av Ammu LS
};


randomMiniGameSpawn(playerid) {
    new randonSpawns = random(sizeof(RandonSpawnsDesceQuebra));
    SetPlayerPos(playerid, RandonSpawnsDesceQuebra[randonSpawns][0], RandonSpawnsDesceQuebra[randonSpawns][1], RandonSpawnsDesceQuebra[randonSpawns][2]);
    SetActorFacingAngle(playerid, RandonSpawnsDesceQuebra[randonSpawns][3]);
    return 1;
}

new pMiniGames[MAX_PLAYERS][miniGames];