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
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "m4_grenadier";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self._ID1302 = "at4";
    character\character_tf_141_rook::_ID616();
}

_ID988()
{
    self setspawnerteam( "allies" );
}

_ID814()
{
    character\character_tf_141_rook::_ID814();
    precacheitem( "at4" );
    precacheitem( "m4_grenadier" );
    precacheitem( "m203_m4" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
