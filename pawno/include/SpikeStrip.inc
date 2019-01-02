#include <a_samp>

#define MAX_SPIKESTRIPS 200

enum sInfo
{
	sCreated,
    Float:sX,
    Float:sY,
    Float:sZ,
    sObject,
};
new SpikeInfo[MAX_SPIKESTRIPS][sInfo];

stock CreateStrip(Float:x,Float:y,Float:z,Float:Angle)
{
    for(new i = 0; i < sizeof(SpikeInfo); i++)
  	{
  	    if(SpikeInfo[i][sCreated] == 0)
  	    {
            SpikeInfo[i][sCreated]=1;
            SpikeInfo[i][sX]=x;
            SpikeInfo[i][sY]=y;
            SpikeInfo[i][sZ]=z-0.7;
            SpikeInfo[i][sObject] = CreateObject(2892, x, y, z-1.0, 0, 0, Angle);
	        return 1;
  	    }
  	}
  	return 0;
}

stock DeleteAllStrip()
{
    for(new i = 0; i < sizeof(SpikeInfo); i++)
  	{
  	    if(SpikeInfo[i][sCreated] == 1)
  	    {
  	        SpikeInfo[i][sCreated]=0;
            SpikeInfo[i][sX]=0.0;
            SpikeInfo[i][sY]=0.0;
            SpikeInfo[i][sZ]=0.0;
            DestroyObject(SpikeInfo[i][sObject]);
  	    }
	}
    return 0;
}

stock DeleteClosestStrip(playerid)
{
    for(new i = 0; i < sizeof(SpikeInfo); i++)
  	{
  	    if(IsPlayerInRangeOfPoint(playerid, 2.0, SpikeInfo[i][sX], SpikeInfo[i][sY], SpikeInfo[i][sZ]))
        {
  	        if(SpikeInfo[i][sCreated] == 1)
            {
                SpikeInfo[i][sCreated]=0;
                SpikeInfo[i][sX]=0.0;
                SpikeInfo[i][sY]=0.0;
                SpikeInfo[i][sZ]=0.0;
                DestroyObject(SpikeInfo[i][sObject]);
                return 1;
  	        }
  	    }
  	}
    return 0;
}

encode_tires(tires1, tires2, tires3, tires4) {

	return tires1 | (tires2 << 1) | (tires3 << 2) | (tires4 << 3);

}