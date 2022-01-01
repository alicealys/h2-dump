// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "rpg_player.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "ak47_reflex";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 768.0, 512.0 );
        self setengagementmaxdist( 1024.0, 1500.0 );
    }

    self._ID1302 = "rpg";
    _ID46607::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID46607::_ID814();
    precacheitem( "rpg" );
    precacheitem( "ak47_reflex" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
