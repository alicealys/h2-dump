// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "team3";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "ak47_reflex";
    self._ID34144 = "pp2000";

    if ( isai( self ) )
    {
        self setengagementmindist( 768.0, 512.0 );
        self setengagementmaxdist( 1024.0, 1500.0 );
    }

    self._ID1302 = "rpg";

    switch ( _ID42226::_ID15942( 3 ) )
    {
        case 0:
            _ID45139::_ID616();
            break;
        case 1:
            _ID49398::_ID616();
            break;
        case 2:
            _ID46819::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "team3" );
}

_ID814()
{
    _ID45139::_ID814();
    _ID49398::_ID814();
    _ID46819::_ID814();
    precacheitem( "rpg" );
    precacheitem( "ak47_reflex" );
    precacheitem( "pp2000" );
    precacheitem( "fraggrenade" );
}
