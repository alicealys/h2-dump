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
            self._ID1302 = "ump45";
            break;
        case 1:
            self._ID1302 = "ump45_acog";
            break;
        case 2:
            self._ID1302 = "ump45_reflex";
            break;
        case 3:
            self._ID1302 = "ump45_eotech";
            break;
    }

    switch ( _ID42226::_ID15942( 2 ) )
    {
        case 0:
            _ID52800::_ID616();
            break;
        case 1:
            _ID43951::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID52800::_ID814();
    _ID43951::_ID814();
    precacheitem( "ump45" );
    precacheitem( "ump45_acog" );
    precacheitem( "ump45_reflex" );
    precacheitem( "ump45_eotech" );
    precacheitem( "beretta" );
    precacheitem( "fraggrenade" );
}
