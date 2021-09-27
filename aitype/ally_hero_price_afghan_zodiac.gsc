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
    self._ID949 = "usp_silencer";
    self._ID34144 = "usp_silencer";

    if ( _func_0D4( self ) )
    {
        self _meth_8178( 256.0, 0.0 );
        self _meth_8179( 768.0, 1024.0 );
    }

    self._ID1302 = "m4_grenadier";
    _ID52868::_ID616();
}

_ID988()
{
    self _meth_8042( "allies" );
}

_ID814()
{
    _ID52868::_ID814();
    _func_14E( "m4_grenadier" );
    _func_14E( "m203_m4" );
    _func_14E( "usp_silencer" );
    _func_14E( "usp_silencer" );
    _func_14E( "fraggrenade" );
}
