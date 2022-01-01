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
    self._ID486 = 200;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "";
    self._ID34144 = "glock";

    if ( isai( self ) )
    {
        self setengagementmindist( 128.0, 0.0 );
        self setengagementmaxdist( 512.0, 1024.0 );
    }

    switch ( _ID42226::_ID15950( 7 ) )
    {
        case 0:
            self._ID1302 = "kriss";
            break;
        case 1:
            self._ID1302 = "kriss_reflex";
            break;
        case 2:
            self._ID1302 = "ump45_acog";
            break;
        case 3:
            self._ID1302 = "ump45_eotech";
            break;
        case 4:
            self._ID1302 = "ump45_reflex";
            break;
        case 5:
            self._ID1302 = "tmp";
            break;
        case 6:
            self._ID1302 = "tmp_reflex";
            break;
    }

    _ID45961::_ID616();
}

_ID988()
{
    self setspawnerteam( "axis" );
}

_ID814()
{
    _ID45961::_ID814();
    precacheitem( "kriss" );
    precacheitem( "kriss_reflex" );
    precacheitem( "ump45_acog" );
    precacheitem( "ump45_eotech" );
    precacheitem( "ump45_reflex" );
    precacheitem( "tmp" );
    precacheitem( "tmp_reflex" );
    precacheitem( "glock" );
    precacheitem( "fraggrenade" );
}
