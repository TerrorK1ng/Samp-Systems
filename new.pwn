#include <a_samp>
#include <sscanf2>
#include <zcmd>
#include <DOF2>
#include <YSI_Coding\y_hooks>
#include <colors>
#include <dialogs>

// Header Assets

#include "../assets/player/playerCallbacks.pwn"
#include "../assets/player/playerCMD.pwn"
#include "../assets/player/desceQuebra.pwn"
#include "../assets/global/globalFunctions.pwn"

main() 
{
	print("\n\n\n Hello World!\n\n\n");
	DOF2_Exit();
}

public OnGameModeInit()
{
	AddPlayerClass(0, 1243.0890,-1692.3297,16.1972, 0, 0, 0, 0, 0, 0, 0);
	SetGameModeText("GM Systems Tests");
	CreatePickup(1239, 1, 1243.3281,-1700.3907,14.8672); // Pickup Select Minigame modes LS
	Create3DTextLabel("Aperte F para escolher\no modo de jogo", -1, 1243.3281,-1700.3907,14.8672, 15.0, 0);
	return 1;
}

public OnGameModeExit()
{
	return 1;
}