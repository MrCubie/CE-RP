#if !defined VC_PLUGIN_INC
	#define VC_PLUGIN_INC
	#if !defined __cplusplus
		native SendVoice(playerid, BitStream:bs);
		native StartVoice(playerid);
		native StopVoice(playerid);
		forward OnPlayerVoice(playerid, BitStream:bs);
	#endif
#endif
