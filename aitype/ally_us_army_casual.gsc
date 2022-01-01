// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "allies";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 100;
    self._ID470 = "";
    self._ID464 = 0;
    self._ID949 = "beretta";
    self._ID34144 = "";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self._ID1302 = "m4_grunt";

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            character\character_us_army_casual_blk::_ID616();
            break;
        case 1:
            character\character_us_army_casual_wht::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    character\character_us_army_casual_blk::_ID814();
    character\character_us_army_casual_wht::_ID814();
    precacheitem( "m4_grunt" );
    precacheitem( "beretta" );
}
