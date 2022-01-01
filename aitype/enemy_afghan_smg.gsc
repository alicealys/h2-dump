// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "beretta";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 768.0 );
    }

    switch ( _ID42226::_ID15950( 4 ) )
    {
        case 0:
            self._ID1302 = "uzi";
            break;
        case 1:
            self._ID1302 = "tmp";
            break;
        case 2:
            self._ID1302 = "mp5";
            break;
        case 3:
            self._ID1302 = "uzi";
            break;
    }

    _ID47889::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID47889::_ID814();
    precacheitem( "uzi" );
    precacheitem( "tmp" );
    precacheitem( "mp5" );
    precacheitem( "uzi" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
