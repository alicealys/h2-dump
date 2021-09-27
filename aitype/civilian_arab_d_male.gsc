// H2 PC GSC
// Decompiled by https://github.com/xensik/gsc-tool

_ID616()
{
    self._ID3217 = "";
    self._ID2032 = "";
    self._ID1194 = "neutral";
    self._ID1244 = "civilian";
    self._ID36736 = "regular";
    self._ID10 = 0.2;
    self._ID486 = 25;
    self._ID470 = "fraggrenade";
    self._ID464 = 0;
    self._ID949 = "beretta";
    self._ID34144 = "colt45";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 256.0, 0.0 );
        self _meth_8179( 768.0, 1024.0 );
    }

    self._ID1302 = "ak47";
    _ID44847::_ID616();
}

_ID988()
{
    self _meth_8042( "neutral" );
}

_ID814()
{
    _ID44847::_ID814();
    _func_14E( "ak47" );
    _func_14E( "beretta" );
    _func_14E( "colt45" );
    _func_14E( "fraggrenade" );
}
