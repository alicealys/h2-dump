// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "common_rambo_anims.csv";
    self._ID1194 = "axis";
    self._ID1244 = "human";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 150;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "deserteagle";

    if ( isai( self ) )
    {
        self setengagementmindist( 0.0, 0.0 );
        self setengagementmaxdist( 350.0, 600.0 );
    }

    self._ID1302 = "ak47";

    switch ( _ID42226::_ID15942( 11 ) )
    {
        case 0:
            _ID51316::_ID616();
            break;
        case 1:
            _ID45439::_ID616();
            break;
        case 2:
            _ID49730::_ID616();
            break;
        case 3:
            _ID53930::_ID616();
            break;
        case 4:
            _ID44765::_ID616();
            break;
        case 5:
            _ID54019::_ID616();
            break;
        case 6:
            _ID47374::_ID616();
            break;
        case 7:
            _ID45943::_ID616();
            break;
        case 8:
            _ID48226::_ID616();
            break;
        case 9:
            _ID47555::_ID616();
            break;
        case 10:
            _ID43317::_ID616();
            break;
    }
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID51316::_ID814();
    _ID45439::_ID814();
    _ID49730::_ID814();
    _ID53930::_ID814();
    _ID44765::_ID814();
    _ID54019::_ID814();
    _ID47374::_ID814();
    _ID45943::_ID814();
    _ID48226::_ID814();
    _ID47555::_ID814();
    _ID43317::_ID814();
    precacheitem( "ak47" );
    precacheitem( "deserteagle" );
    precacheitem( "fraggrenade" );
    _ID42359::_ID616();
}
